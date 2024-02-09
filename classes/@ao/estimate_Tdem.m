% ESTIMATE_TDEM Demodulation time estimator
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: ESTIMATE_TDEM estimates the Tdemod assuming that the signal 
%              should be all in the sine phase. Period T can be estimated 
%              with "estimate_period"
%
% CALL:        out = obj.estimate_Tdem(pl)
%              out = estimate_Tdem(objs, pl)
%
% INPUTS:      pl      - a parameter list
%              obj(s)  - input AO object(s)
%
% OUTPUTS:     out - some output.
% 
% CODE SNIPPET: 
%              TOG =
%              trangeG = 
%              i = 1;
%              TdemodG(i) = estimate_Tdem_METHOD(T0G(i),...
%                             plist('tran',[trangeG(i,1) trangeG(i,2)]));
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'estimate_Tdem')">Parameters Description</a>
%
% VERSION:    $Id: estimate_Tdem.m 5062 2014-07-22 10:19:03Z mauro.hueller $
%
% This code is inherited from UTN, mainly from WJ Weber
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = estimate_Tdem(tsignal,T0,varargin)
  
  % Determine if the caller is a method or a user
  callerIsMethod = utils.helper.callerIsMethod; %if YES: 1 or 'true'
  
  warning('#### ===> Propose itself: UPGRADE')
  
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
  %[objs, obj_invars] = utils.helper.collect_objects(varargin(:), 'ao', in_names);
  if numel(tsignal)>1
    [objs, obj_invars] = utils.helper.collect_objects(tsignal, 'ao', in_names);
  else
    [objs, obj_invars] = utils.helper.collect_objects({tsignal}, 'ao', in_names);
  end
  if isempty(objs), error('Estimate_Tdem: empty input tsignal [TSDATA] of ao objects'); end

  
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
    
  % Verbosity
  verb = find(pl, 'talk');
  if ~isempty(verb) && verb
    opt_arg = [opt_arg 'talk'];
  else
    opt_arg = [opt_arg 'notalk'];
  end
  
  % tran
  tran = find(pl, 'tran');
  if ~isempty(tran)
    opt_arg = [opt_arg 'tran' tran];
  end  
  
  % nosmart
  nosmart = find(pl, 'nosmart');
  if (~isempty(nosmart))&&(nosmart==0)
    opt_arg = [opt_arg 'nosmart' nosmart];
  end  
  
  % prec
  prec = find(pl, 'prec');
  if ~isempty(prec)
    opt_arg = [opt_arg 'prec' prec];
  end  
  
  nopl = find(pl, 'nopl');
  if ~isempty(nopl), 
    opt_arg = [opt_arg 'nopl']; 
  end
  
  %T0
  %T0 = find(pl, 'T0');
  if isempty(T0), 
    error('ao/estimate_Tdem: not enough input arguments. At least one T0 value or ao has to be defined');
  end
  if isa(T0,'cell')&&isa(T0{1},'ao')
  
  if (numel(T0)<numel(objs))&&(numel(T0)==1),
    for ii = 1:numel(objs), T0(ii)=T0(1); end
  elseif (numel(T0)<numel(objs))&(numel(T0)~=1),
    error(['ao/estimate_Tdem: the number of elements in T0 is not compatible with input objs:' num2str(numel(T))]);
  end
    
  elseif isa(T0,'cell')&&isa(T0{1},'double')
    
  if (numel(T0)<numel(objs))&&(numel(T0)==1),
    for ii = 1:numel(objs), T0(ii)=ao(T0(1),plist('name','Period of oscillation.')); T0(ii).setYunits(objs(ii).xunits); end
  elseif (numel(T0)<numel(objs))&(numel(T0)~=1),
    error(['ao/estimate_Tdem: the number of elements in T0 is not compatible with input objs:' num2str(numel(T))]);
  end
  
  elseif isa(T0,'ao')
  if (numel(T0)<numel(objs))&&(numel(T0)==1),
    for ii = 1:numel(objs), T0(ii)=T0(1); end
  elseif (numel(T0)<numel(objs))&(numel(T0)~=1),
    error(['ao/estimate_Tdem: the number of elements in T0 is not compatible with input objs:' num2str(numel(T))]);
  end

  elseif isa(T0,'double')
   if (numel(T0)<numel(objs))&&(numel(T0)==1),
    for ii = 1:numel(objs), T0(ii)=T0(1); end
  elseif (numel(T0)<numel(objs))&(numel(T0)~=1),
    error(['ao/estimate_Tdem: the number of elements in T0 is not compatible with input objs:' num2str(numel(T))]);
   end

  
  end
  
  for jj = 1 : numel(objsCopy)
    % Process object jj
    %objs(jj) = objsCopy(jj);
    
    % Call the actual function    
    Tdem(jj) = estimate_Tdem(objs(jj).x, objs(jj).y,...
      T0(jj).y,opt_arg{:});    
%      objs(jj).procinfo.getParamValueForParam('T0'),opt_arg{:});    
    TdemodG(jj) = ao(Tdem(jj),plist('name','Estimated demodulation start time'));
    TdemodG(jj).setYunits(objs(jj).xunits);

    % Set output object name
    TdemodG(jj).setName(sprintf('estimate_Tdem(%s%s)', obj_invars{jj},num2str(jj)));
    
    % Add history
    if ~callerIsMethod
      TdemodG(jj).addHistory(getInfo('None'), pl, obj_invars(jj), objs(jj).hist);
    end
  end % loop over analysis objects
  
  % Set output
  varargout = {TdemodG};
  %varargout = utils.helper.setoutputs(nargout, TdemodG);
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
  ii = minfo(mfilename, mfilename('class'), 'UniTN_Module', utils.const.categories.sigproc, '$Id: estimate_Tdem.m 5062 2014-07-22 10:19:03Z mauro.hueller $', sets, pl);
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
    {'tran', ['Time range to use for computation.']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);
  
  % nosmart
  p = param(...
    {'nosmart', ['Uses a iterative computation to find Tdemod maintained for educational purposes.']}, paramValue.DOUBLE_VALUE(1));
  pl.append(p);
  
  % prec
  p = param(...
    {'prec', ['Only useful with ''nosmart''. Set the accuracy to wich the iterative calculation should stop.']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);
  
  % nopl
  p = param(...
    {'nopl', ['Do not produce plots.']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);
 
  % Verbosity level
  p = param(...
    {'talk', ['Verbose output level.']}, paramValue.TRUE_FALSE);
  pl.append(p);
end

% END
