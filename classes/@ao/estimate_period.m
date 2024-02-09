% ESTIMATE_PERIOD Estimates the period as the inverse of the center of the
%                 gaussian.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: ESTIMATE_PERIOD computes the power spectral density of the timeseries and uses fits the
%  peak attributed to the torsion pendulum oscillation with a gaussian.
%  Estimates the period as the inverse of the center of the gaussian.
%
% CALL:        out = obj.estimate_period(pl)
%              out = estimate_period(objs, pl)
%
% INPUTS:      pl      - a parameter list
%              obj(s)  - input AO object(s)
%
% OUTPUTS:     out - some output.
%
% CODE SNIPPLET:
%               tsignal =
%               trangeG =
%               i = 1;
%               T0G(i) = estimate_period_METHOD(tsignal,...
%                  plist('tran',trangeG(i,:),'range',1./[2000 1100],'nopl',0));
%
%
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'estimate_period')">Parameters Description</a>
%
% VERSION:    $Id: estimate_period.m 5061 2014-07-22 10:18:39Z mauro.hueller $
%
% This code is inherited from UTN, mainly from WJ Weber
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = estimate_period(varargin)
  
  % Determine if the caller is a method or a user
  callerIsMethod = utils.helper.callerIsMethod; %if YES: 1 or 'true' and name??
  
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
  
  % Collect all objects of class <CLASS>
  [objs, obj_invars] = utils.helper.collect_objects(varargin(:), 'ao', in_names);
  
  if isempty(objs), error('Estimate_period: empty input timeseries of ao objects'); end
  
  
  %--- Decide on a deep copy or a modify.
  % If the no output arguments are specified, then we are modifying the
  % input objects. If output arguments are specified (nargout>0) then we
  % make a deep copy of the input objects and return modified versions of
  % those copies.
  objsCopy = copy(objs, nargout);
  
  % Apply defaults to plist
  pl = applyDefaults(getDefaultPlist, varargin{:});
  
  % Optional arguments
  opt_arg = {};
  
  % tran
  tran = find(pl, 'tran');
  if ~isempty(tran)
    opt_arg = [opt_arg 'tran' tran];
  end
  
  % range
  range = find(pl, 'range');
  if ~isempty(range)
    opt_arg = [opt_arg 'range' range];
  end
  
  % nopl
  nopl = find(pl, 'nopl');
  if ~isempty(nopl)
    opt_arg = [opt_arg 'nopl' nopl];
  elseif nopl == 0
    opt_arg = [opt_arg 'nopl' nopl];
  end
  
  % Loop over input objects
  for jj = 1 : numel(objsCopy)
    
    % Call the actual function
    T(jj) = estimate_period(objs(jj).x, objs(jj).y, opt_arg{:});
    T0(jj) = ao(T(jj), plist('name', 'Estimated oscillation period'));
    T0(jj).setYunits(objs(jj).xunits);
    
    % Set output object name
    T0(jj).setName(sprintf('estimate_period(%s%s)', obj_invars{jj}, num2str(jj)));
    
    % Add history
    if ~callerIsMethod
      T0(jj).addHistory(getInfo('None'), pl, obj_invars(jj), objs(jj).hist);
    end
  end % loop over analysis objects
  
  % Set output
  varargout = utils.helper.setoutputs(nargout, T0);
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
  ii = minfo(mfilename, mfilename('class'), 'UniTN_Module', utils.const.categories.sigproc, '$Id: estimate_period.m 5061 2014-07-22 10:18:39Z mauro.hueller $', sets, pl);
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
  
  % tran
  p = param(...
    {'tran', ['The time range to use for computation.']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);
  
  % range
  p = param(...
    {'range', ['The frequency range to fit. default [1.4e-3 2.2e-3].']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);
  
  % nopl
  p = param(...
    {'nopl', ['Do not produce plots.']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);

end

% END
