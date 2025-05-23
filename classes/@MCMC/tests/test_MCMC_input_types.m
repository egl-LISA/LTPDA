%
% Tests that an the method works with AOs.
% and Matrix inputs.
%
function test_MCMC_input_types(~)
  
  result      = true;
  message     = 'Pass';
  
  pl = plist(...
    'Nsamples',  10,...
    'FitParams', {'DAMP','K'},...
    'range',     {[-3 3] [-3 3]},...
    'f1',        1e-4,...
    'f2',        0.5,...
    'inNames',   {'COMMAND.force'},...
    'outNames',  {'HARMONIC_OSC_1D.position'},...
    'Navs',      5,...
    'cov',       [1.74203263643076e-07 -2.02332484875624e-22 ; -2.02332484875624e-22 1.66273793345002e-08],...
    'search',    true,...
    'Tc',        [1 2],...
    'heat',      2,...
    'Fprint',    1500,...
    'jumps',     [2e0 1e1 5e2 1e3],...
    'x0',        [0.1 0.1],...
    'simplex',   false,...
    'debug',     false,...
    'print diagnostics', false);
  
  m = MCMC(pl);
  
  % Do a run
  m.setModel(ssm('harmonic_osc.mat'));
  m.setInputs(ao('in.mat'));
  m.setNoise(ao('noise.mat'));
  
  try
    m.process(ao('out.mat'));
  catch err
    result  = false;
    message = sprintf('Fail. Failed to run with AO objects... Error: %s', err.message);  
  end
  
  if result
    try
      m.process(matrix(ao('out.mat')));
    catch err
      result  = false;
      message = sprintf('Fail. Failed to run with MATRIX objects... Error: %s', err.message);  
    end
  end

  assert(result, message)
  
end