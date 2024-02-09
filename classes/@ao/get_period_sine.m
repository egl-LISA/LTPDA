% GET_PERIOD_SINE get period of a variable that varies sinusoidally
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: GET_PERIOD_SINE is ao version (a pure wrapper) of the 
% function that get period of a variable that varies sinusoidally
% in time (t):      x(t) = A*sin(2*pi/T0*(t-t0)) + x0
%
% It finds T0 that minimizes the model chi^2, for some range of
% periods [T0_ran(1) T0_ran(2)], using quadratic fit to mean square deviation of 
% data from fitted model.  
% It also calculates amplitude (A), phase (start time t0), equilibrium position (x0).
%
% CALL:        p = get_period_sine(a1, pl)
%              p = a1.get_period_sine(pl)
%
% INPUTS:      a1  - input analysis object
%              pl  - input parameter list
%
% OUTPUTS:     p   - a pest object with T0, A, t0, x0, and their uncertainties
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'get_period_sine')">Parameters Description</a>
%
% VERSION:    $Id: get_period_sine.m 5196 2014-09-05 10:40:10Z andrea.cesarini $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = get_period_sine(varargin)
  
  % Check if this is a call for parameters
  if utils.helper.isinfocall(varargin{:})
    varargout{1} = getInfo(varargin{3});
    return
  end
  
  import utils.const.*
  utils.helper.msg(msg.MNAME, 'running %s/%s', mfilename('class'), mfilename);
  
  % Collect input variable names
  in_names = cell(size(varargin));
  for ii = 1:nargin,in_names{ii} = inputname(ii);end
  
  % Collect all AOs and plists
  [as, ao_invars] = utils.helper.collect_objects(varargin(:), 'ao', in_names);
  
  % collect input histories
  inhists = copy([as.hist], true);
  
  % check number of input AO
  if numel(as) ~= 1
    error('### get_period_sine accepts only one input');
  end
  
  % combine plists
  pl = applyDefaults(getDefaultPlist(), varargin{:});
  
  % Periods time range
  T0_range = find(pl, 'T0_range');
  if isempty(T0_range), T0_range = find(pl, 'Trange'); end
  if isempty(T0_range)
    error('### Please provide a non-empty fitting period range!');
  end

  % Optional arguments
  opt_arg = {};
  
  % Analysis time range
  tran = find(pl, 'tran');
  if ~isempty(tran)
    opt_arg = [opt_arg 'tran' tran];
  end
  
  % Analysis points
  N = find(pl, 'N');
  if ~isempty(N)
    opt_arg = [opt_arg 'N' N];
  end
  
  % Additional terms to fit
  add_orders = find(pl, 'order');
  switch lower(add_orders)
    case 'mean'
      add_orders = [];
    case {'lin', 'linear'}
      add_orders = 'linear';
    case {'quad', 'quadratic'}
      add_orders = 'quadratic';
    otherwise
      error('### unsupported values ''%s'' for the parameter ''%s''. Please refer to the help!', add_orders, 'order');
  end
  
  if ~isempty(add_orders)
    opt_arg = [opt_arg add_orders];
  end
  
  % Additional frequencies to fit
  frequencies = find(pl, 'fmod');
  if ~isempty(frequencies)
    opt_arg = [opt_arg 'fMOD' frequencies];
  end

  % Additional harmonics to fit
  harm = find(pl, 'harm');
  if ~isempty(harm)
    opt_arg = [opt_arg 'harm' harm];
  end
  
  % Verbosity
  verb = find(pl, 'talk');
  if ~isempty(verb) && verb
    opt_arg = [opt_arg 'talk'];
  else
    opt_arg = [opt_arg 'nobs'];
  end
  
  % Do not make the final plot
  plt = find(pl, 'plot');
  if ~isempty(plt) && plt
    opt_arg = [opt_arg 'pl'];
  else
    opt_arg = [opt_arg 'nopl'];
  end
  
  % Call the actual function
  [T0, A, t0, x0, dT0, dA, dt0, dx0, T0vect, x_MSvect] = get_period_sine(as.x, as.y, T0_range, opt_arg{:});  
  
  p  = [T0 A t0 x0];
  dp = [dT0 dA dt0 dx0];
  
  % prepare model, units, names
  names = {'T0', 'A', 't0', 'x0'};
  model = 'A*sin(2*pi/T0*(t-t0)) + x0';
  xunits = 's';
  yunits = as.yunits;
  units = {as.xunits, as.yunits, as.xunits, as.yunits};
  
  model = smodel(plist(...
    'expression', model, ...
    'params', names, ...
    'values', p, ...
    'xvar', 't', ...
    'xunits', xunits, ...
    'yunits', yunits ...
    ));
  
  % Build the output pest object
  out = pest;
  out.setY(p);
  out.setDy(dp);
  out.setCov([]); 
  out.setChi2([]);
  out.setDof([]);
  out.setNames(names{:}); 
  out.setYunits(units);
  out.setModels(model); 
  out.setProcinfo(plist('T0vect', T0vect, 'x_MSvect', x_MSvect));
  out.name = sprintf('get_period_sine(%s)', ao_invars{1});
  out.addHistory(getInfo('None'), pl,  ao_invars, inhists);
  
  % Set output
  varargout{1} = out;
    
end

%--------------------------------------------------------------------------
% Get Info Object
%--------------------------------------------------------------------------
function ii = getInfo(varargin)
  if nargin == 1 && strcmpi(varargin{1}, 'None')
    sets = {};
    pl   = [];
  else
    sets = {'Default'};
    pl   = getDefaultPlist();
  end
  % Build info object
  ii = minfo(mfilename, 'ao', 'UniTN_Module', utils.const.categories.sigproc, '$Id: get_period_sine.m 5196 2014-09-05 10:40:10Z andrea.cesarini $', sets, pl);
  % Set the default property of the method as modifier or not (GUI)
  ii.setModifier(false);
  % Set the minumum number of inputs/outputs for the block (GUI)
  ii.setArgsmin(1);
  ii.setOutmin(1);
end

%--------------------------------------------------------------------------
% Get Default Plist
%--------------------------------------------------------------------------
function pl = getDefaultPlist()

  pl = plist();
  
  % Fitting periods range
  p = param(...
    {'T0_range', ['Range of fitting periods']}, []);
  p.addAlternativeKey('Trange');  
  pl.append(p);
  
  % Fitting time range
  p = param(...
    {'tran', ['Fitting time range']}, []);
  pl.append(p);
  
  % Number of points
  p = param(...
    {'N', ['The number of periods T0 to try ']}, 100);
  pl.append(p);
  
  % Polynomial terms
  p = param(...
    {'order', ['Adds polynomial fitting to sinusoidal fitting of the data stretch. Please choose between:<ul>' ...
    '<li>mean - constant term</li>' ...
    '<li>lin  - linear term</li>' ...
    '<li>quad - quadratic term</li></ul>']}, {1, {'mean', 'lin', 'quad'}, paramValue.SINGLE});
  pl.append(p);
  
  % Additional frequencies to fit
  p = param(...
    {'fmod', ['Additional frequencies to add to the fit<br>' ...
    'Please provide a frequency (or list of frequencies eg [fMOD1 fMOD2 fMOD3]) ' ...
    'which are included in fit (if you want to estimate free ' ...
    'oscillation from a stretch of data with a coherent forcing term)']}, []);
  pl.append(p);
  
   % Additional harmonics to fit
  p = param(...
    {'harm', ['Harmonics of the fundamental frequency 1/T0 (where T0 is the period) to add to the fit<br>' ...
    'Please provide a list of harmonics eg [1 2 3])']}, [1]);
  pl.append(p);
  
  % Verbosity level
  p = param(...
    {'talk', ['Verbose output']}, paramValue.FALSE_TRUE);
  pl.append(p);

  % Final plot
  p = param(...
    {'plot', ['Final plot']}, paramValue.TRUE_FALSE);
  pl.append(p);

end
% END
