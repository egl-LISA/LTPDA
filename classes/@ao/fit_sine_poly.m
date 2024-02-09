% FIT_SINE_POLY fits data to a polynomial and any number of cos / sin terms with frequencies
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: FIT_SINE_POLY is ao version (a pure wrapper) of the
% function that fits data x(t) to a polynomial of given order and any
% number of cos / sin terms with given frequencies listed
% x(t) = a0 + a1*t + a2 * t^2 + ...
%           ... + C1 cos (2*pi*f1*t) + S1 sin (2*pi*f1*t)
%           ... + C2 cos (2*pi*f2*t) + S2 sin (2*pi*f2*t) + ...
%
% CALL:        p = fit_sine_poly(a1, pl)
%              p = a1.fit_sine_poly(pl)
%
% INPUTS:      a1  - input analysis object
%              pl  - input parameter list
%
% OUTPUTS:     p   - a pest object with:
%           fit parameters: [a0; a1; ... a_polyord; C1; S1; C2; S2; ...]
%           fit uncertainties:   [da0; da1; ... ; dC1; dS1; ...]
%           C       full covariance matrix
%           chi2    fit chi^2 (meaningless if fit errors not given)
%           N_DOF   number of degrees of freedom
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'fit_sine_poly')">Parameters Description</a>
%
% VERSION:    $Id: fit_sine_poly.m 5080 2014-07-23 15:40:36Z mauro.hueller $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = fit_sine_poly(varargin)
  
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
    error('### fit_sine_poly accepts only one input');
  end
  
  % combine plists
  usepl = applyDefaults(getDefaultPlist, varargin{:});
  
  % Frequencies to fit
  frequencies = find(usepl, 'freqs');
  
  % Polynomial order to fit up to
  order = find(usepl, 'order');
  
  % Optional arguments
  opt_arg = {};
  
  % Analysis time range
  tran = find(usepl, 'tran');
  if ~isempty(tran)
    opt_arg = [opt_arg 'tran' tran];
  end
  
  % Sinusoidal terms t0
  t0 = find(usepl, 't0');
  if ~isempty(t0)
    opt_arg = [opt_arg 't0' t0];
  end
  
  % Verbosity
  verb = find(usepl, 'talk');
  if ~isempty(verb) && verb
    opt_arg = [opt_arg 'talk'];
  else
    opt_arg = [opt_arg 'nobs'];
  end
  
  % Do not make the final plot
  plt = find(usepl, 'plot');
  if ~isempty(plt) && ~plt
    opt_arg = [opt_arg 'nopl'];
  else
    opt_arg = [opt_arg 'pl'];
  end
  
  % Call the actual function
  [fit_out, dfit_out, C, chi2, N_DOF] = fit_sine_poly(as.x, as.y, order, frequencies, opt_arg{:});
  
  p  = fit_out;
  dp = dfit_out;
  
  % prepare names, units, model: polynomial terms
  names = {};
  units = {};
  model_str = '';
  
  xunits = as.xunits;
  yunits = as.yunits;

  for jj = 0:order
    name = sprintf('a%d', jj);
    names = [names name];
    units = [units yunits ./ (xunits.^jj)];
    model_str_term = sprintf('a%d*t.^%d', jj, jj);
    model_str = sprintf('%s + %s', model_str, model_str_term);
  end
  
  % prepare names, units, model: sinusoidal terms
  for jj = 1:numel(frequencies)
    name_c = sprintf('C%d', jj);
    name_s = sprintf('S%d', jj);
    names = [names name_c name_s];
    units = [units yunits yunits];
    model_str_term = sprintf('C%d*cos(2*pi*%f*t) + S%d*sin(2*pi*%f*t)', jj, frequencies(jj), jj, frequencies(jj));
    model_str = sprintf('%s + %s', model_str, model_str_term);
  end
  
  model = smodel(plist(...
    'expression', model_str, ...
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
  out.setCov(C);
  out.setChi2(chi2);
  out.setDof(N_DOF);
  out.setNames(names{:});
  out.setYunits(units);
  out.setModels(model);
  out.name = sprintf('fit_sine_poly(%s)', ao_invars{1});
  out.addHistory(getInfo('None'), usepl,  ao_invars, inhists);
  
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
  ii = minfo(mfilename, 'ao', 'UniTN_Module', utils.const.categories.sigproc, '$Id: fit_sine_poly.m 5080 2014-07-23 15:40:36Z mauro.hueller $', sets, pl);
  % Set the default property of the method as modifier or not
  ii.setModifier(false);
end

%--------------------------------------------------------------------------
% Get Default Plist
%--------------------------------------------------------------------------
function pl = getDefaultPlist()
  
  pl = plist();
  
  % Order
  p = param(...
    {'Order', ['Order of the fitting polynomial']}, 0);
  pl.append(p);
  
  % Frequencies to fit
  p = param(...
    {'freqs', ['Frequency terms which are included in fit']}, []);
  pl.append(p);
  
  % Fitting time range
  p = param(...
    {'tran', ['Fitting time range']}, paramValue.EMPTY_DOUBLE);
  pl.append(p);
  
  % t0
  p = param(...
    {'t0', ['Time in which all sinusoids should start']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);
  
  % Center
  p = param(...
    {'Center', ['Fits polynomials to the function a_ordj*(t-t_c)^ordj <br>' ...
    'where t_c is the mean of the in-range time values']}, paramValue.FALSE_TRUE);
  pl.append(p);
  
  % Verbosity level
  p = param(...
    {'talk', ['Verbose output']}, paramValue.TRUE_FALSE);
  pl.append(p);
  
  % Final plot
  p = param(...
    {'plot', ['Produce a plot with data']}, paramValue.TRUE_FALSE);
  pl.append(p);
  
end
% END
