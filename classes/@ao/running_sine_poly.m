% RUNNING_SINE_POLY Fits an oscillating signal in presence of trends.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: RUNNING_SINE_POLY fits a polynomial of order "polyord" and
%              sinusoids at "freqs" with starting point "t0".  fits to windows
%              of length "wlen", and sampling time "samp_time"
%
% CALL:        out = obj.running_sine_poly(pl)
%              out = running_sine_poly(as, pl)
%
% INPUTS:      pl      - a parameter list
%              obj(s)  - input AO object(s)
%
% OUTPUTS:     out - some output.
%
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'running_sine_poly')">Parameters Description</a>
%
% VERSION:    $Id: running_sine_poly.m 5197 2014-09-05 10:41:12Z andrea.cesarini $
%
% This code is inherited from UTN, mainly from WJ Weber
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = running_sine_poly(varargin)
  
  % Determine if the caller is a method or a user
  callerIsMethod = utils.helper.callerIsMethod; %if YES: 1 or 'true'
  
  % Check if this is a call for parameters
  if utils.helper.isinfocall(varargin{:})
    varargout{1} = getInfo(varargin{3});
    return
  end
  
  % Print a run-time message
  import utils.const.*
  utils.helper.msg(msg.PROC3, 'running %s/%s', mfilename('class'), mfilename);
  
  % Collect input variable names for storing in the history
  in_names = cell(size(varargin));
  for ii = 1:nargin,in_names{ii} = inputname(ii);end
  
  % Collect all AOs and plists
  [as, ao_invars] = utils.helper.collect_objects(varargin(:), 'ao', in_names);
  
  % collect input histories
  inhists = copy([as.hist], true);
  
  % Some preliminary checks
  if isempty(as)
    error('running_sine_poly: empty input timeseries of ''ao'' objects');
  end
  
  % Apply defaults to plist
  pl = applyDefaults(getDefaultPlist(), varargin{:});
  
  % Search for parameters: frequencies
  freqs = find(pl, 'freqs');
  switch class(freqs)
    case 'double'
      % Nothing to do
    case 'ao'
      if isequal(freqs.yunits, unit('s'))
        freqs = 1 ./ freqs;
      end
      freqs = freqs.y;
  end
  
  % Search for parameters: order of polynomial for trend
  order = find(pl, 'order');
  
  % Search for parameters: time range
  tran = find(pl, 'tran');
  switch class(tran)
    case 'double'
      % Nothing to do
    case 'time'
      tran = time2exp(tran);
    case 'timespan'
      tran = time2exp(tran);
  end
  
  % Search for parameters: demodulation starting point !!!
  % It is defined as the point where the sinusoid starts.
  t0 = find(pl, 't0');
  switch class(t0)
    case 'double'
      % Nothing to do
    case 'time'
      t0 = time2exp(t0);
    case 'ao'
      t0 = t0.y;
  end
  
  % Search for parameters: window length
  wlen = find(pl, 'wlen');
  switch class(wlen)
    case 'double'
      % Nothing to do
    case 'ao'
      warning('#### IS IT DEPENDING ON THE PROVIDED AO FIELD FORMAT?? THUS, IT MIGHT BE REQUIRED TO TRANFORM IT.')
      wlen = wlen.y;
  end
  
  % Search for parameters: sampling time (duration?)
  samp_time = find(pl, 'samp_time');
  switch class(samp_time)
    case 'double'
      % Nothing to do
    case 'ao'
      samp_time = samp_time.y;
  end
  
  % Optional arguments
  opt_arg = {};
  
  if ~isempty(tran)
    opt_arg = [opt_arg 'tran' tran];
  end
  
  % nopl
  nopl = find(pl, 'nopl');
  if ~isempty(nopl), opt_arg = [opt_arg 'nopl' 'nopl'];
  end
  
  for jj = 1 : numel(as)
    % Call the actual routine
    [tf, fits, chi2s, dfits, Cs, Ns] = ...
      running_sine_poly(as(jj).x, as(jj).y, order, freqs, t0,...
      wlen, samp_time, opt_arg{:});
    
    % prepare names, units, model: polynomial terms
    names = {};
    units = {};
    model_str = '';
    
    xunits = as(jj).xunits;
    yunits = as(jj).yunits;
    
    for kk = 0:order
      name = sprintf('a%d', kk);
      names = [names name];
      units = [units yunits ./ (xunits.^kk)];
      model_str_term = sprintf('a%d*t.^%d', kk, kk);
      model_str = sprintf('%s + %s', model_str, model_str_term);
    end
    % prepare names, units, model: sinusoidal terms
    for kk = 1:numel(freqs)
      name_c = sprintf('C%d', kk);
      name_s = sprintf('S%d', kk);
      names = [names name_c name_s];
      units = [units yunits yunits];
      model_str_term = sprintf('C%d*cos(2*pi*%f*t) + S%d*sin(2*pi*%f*t)',...
        kk, freqs(kk), kk, freqs(kk));
      model_str = sprintf('%s + %s', model_str, model_str_term);
    end
    
    model = smodel(plist(...
      'expression', model_str, ...
      'params', names, ...
      'values', fits, ...
      'xvar', 't', ...
      'xvals', tf, ...
      'xunits', xunits, ...
      'yunits', yunits ...
      ));
    
    % Build the output pest object
    for mm = 1:size(fits, 1)
      out(mm) = pest;
      out(mm).setY(fits(mm, :));
      out(mm).setDy(dfits(mm, :));
      out(mm).setCov(Cs((mm-1)*(order + numel(freqs))+1:mm*order + numel(freqs), :));
      out(mm).setChi2(chi2s(mm));
      out(mm).setDof(Ns(mm));
      out(mm).setNames(names{:});
      out(mm).setYunits(units);
      out(mm).setModels(model);
      out(mm).name = sprintf('running_sine_poly(%s)', ao_invars{1});
      out(mm).addHistory(getInfo('None'), pl,  {ao_invars}, inhists);
      
      % Write the info about the attenuation factor
      if isempty(out(mm).procinfo)
        out(mm).setProcinfo(plist('tf', tf));
      else
        out(mm).setProcinfo(pset(out(mm).procinfo,'tf',tf));
      end
      
    end
    
    
  end % loop over analysis objects
  
  
  % Set output
  varargout{1} = out;
  % varargout{1} = utils.helper.setoutputs(nargout, out);
  
  
  
  %%
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
  ii = minfo(mfilename, mfilename('class'), 'UniTN_Module', utils.const.categories.sigproc, '$Id: running_sine_poly.m 5197 2014-09-05 10:41:12Z andrea.cesarini $', sets, pl);
end

%--------------------------------------------------------------------------
% Get Default Plist
%--------------------------------------------------------------------------
function plout = getDefaultPlist()
  persistent pl;
  if ~exist('pl', 'var') || isempty(pl)
    pl = buildplist();
  end
  plout = pl;
end

function pl = buildplist()
  
  % Create empty plsit
  pl = plist();
  
  % Order
  p = param(...
    {'Order', ['Order of the fitting polynomial']}, 0);
  pl.append(p);
  
  % Frequencies to fit
  p = param(...
    {'freqs', ['Frequency terms which are included in fit']}, []);
  pl.append(p);
  
  % Windows length
  p = param(...
    {'wlen', ['The fitting window length']}, paramValue.EMPTY_DOUBLE);
  pl.append(p);
  
  % Sampling time
  p = param(...
    {'samp_time', ['The fitting sampling time (????)']}, paramValue.EMPTY_DOUBLE);
  pl.append(p);
  
  % Fitting time range
  p = param(...
    {'tran', ['Fitting time range']}, paramValue.EMPTY_DOUBLE);
  pl.append(p);
  
  % t0
  p = param(...
    {'t0', ['Time in which all sinusoids should start']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);
  
  
end

% END
