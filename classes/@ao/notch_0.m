% NOTCH_0 Performs simple notch filter of a ''free oscillation'' at
% frequency 1/tau_notch on AO objects.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: NOTCH_0 Performs simple notch filter of a "free oscillation" at
% frequency 1/tau_notch on AO objects.
%
%
% CALL:        out = obj.notch_0(pl)
%              out = notch_0(objs, pl)
%
% INPUTS:      pl      - a parameter list
%              obj(s)  - input AO object(s)
%
% OUTPUTS:     out - some output.
% 
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'notch_0')">Parameters Description</a>
%
% VERSION:     $Id: notch_0.m 4341 2013-10-16 20:22:13Z mauro.hueller $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = notch_0(varargin)
  
  % Determine if the caller is a method or a user
  callerIsMethod = utils.helper.callerIsMethod;
  
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
  
  % Frequency to be notched-out
  f = find(pl, 'f');
  if ~isempty(f)
    T_notch = 1 / f;
  else
    T_notch = mfind(pl, 't', 'tau_notch');
  end
  
  % Frequency to estimate the effect of the filter
  f_sig = find(pl, 'f_sig');
  
  % Loop over input objects
  for jj = 1 : numel(objsCopy)
    % Process object jj
    objs(jj) = objsCopy(jj);
    
    % Call the actual function
    [tf, xf, fact] = notch_0(objs(jj).x, objs(jj).y, T_notch, f_sig, opt_arg{:});
    
    % Set the values of the output object
    objs(jj).setXY(tf, xf);
    
    % Write the info about the attenuation factor
    objs(jj).setProcinfo(plist('fact', fact));
    
    % Set output object name
    objs(jj).name = sprintf('notch_0(%s)', obj_invars{jj});
    
    % Add history
    if ~callerIsMethod
      objs(jj).addHistory(getInfo('None'), pl, obj_invars(jj), objs(jj).hist);
    end
  end % loop over analysis objects
  
  % Set output
  varargout = utils.helper.setoutputs(nargout, objs);
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
  ii = minfo(mfilename, 'ao', 'UniTN_Module', utils.const.categories.sigproc, '$Id: notch_0.m 4341 2013-10-16 20:22:13Z mauro.hueller $', sets, pl);
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
  
  % T, TAU_NOTCH
  p = param(...
    {'T', ['The period to be notched out.']}, paramValue.EMPTY_DOUBLE);
  pl.append(p);
  p.addAlternativeKey('TAU_NOTCH');
    
  % f
  p = param(...
    {'f', ['The frequency to be notched out.<br>' ...
    'Please notice this is ignored if the ''T'' (or ''TAU_NOTCH'') parameter is selected']}, paramValue.EMPTY_DOUBLE);
  pl.append(p);

  % f_sig
  p = param(...
    {'f_sig', ['A frequency at which to calculate an attenuation factor.']}, paramValue.DOUBLE_VALUE(0));
  pl.append(p);

  % Verbosity level
  p = param(...
    {'talk', ['Verbose output']}, paramValue.TRUE_FALSE);
  pl.append(p);

    
end

% END
