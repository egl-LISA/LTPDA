% TIME_TORQUE Computes torque time series from an angle time series
% using a numerical differentiation method to obtain the first and the
% second derivative.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: % TIME_TORQUE Computes torque time series from an angle time series
% using a numerical differentiation method to obtain the first and the
% second derivative.
%
% Note: this is just a wrapper of ao/time_torque. Each AO in the collection is passed
% to ao/psd with the input plist. 
%
% CALL:        out = time_torque(in, pl);
%
% Note: this is just a wrapper of ao/psd. Each AO in the collection is passed
% to ao/time_torque with the input plist. 
% 
% INPUTS:      in      -  input collection object 
%              pl      -  parameter list
%
% OUTPUTS:     out     -  output collection object
%
% <a href="matlab:utils.helper.displayMethodInfo('collection', 'time_torque')">Parameters Description</a>
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = time_torque(varargin)
  
  % Define the method
  methodName = mfilename;
  
  % Check if this is a call for parameters
  if utils.helper.isinfocall(varargin{:})
    varargout{1} = getInfo(varargin{3});
    return
  end
  
  if nargout == 0
    error('### collection %s method can not be used as a modifier.', methodName);
  end
    
  % Collect input variable names
  in_names = cell(size(varargin));
  for ii = 1:nargin
    in_names{ii} = inputname(ii);
  end
  
  % Collect all collection objects and plists
  [ms, obj_invars, rest] = utils.helper.collect_objects(varargin(:), 'collection', in_names);
  [pl, pl_invars, rest]     = utils.helper.collect_objects(varargin(:), 'plist', in_names);
  
  % call the ltpda_container wrapper
  varargout{1} = wrapper@ltpda_container(ms, pl, getInfo('None'), obj_invars, methodName);  
  
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Local Functions                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION:    getInfo
%
% DESCRIPTION: Get Info Object
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function ii = getInfo(varargin)
  
  if nargin == 1 && strcmpi(varargin{1}, 'None')
    sets = {};
    pls  = [];
  else
    ii = ao.getInfo(mfilename);
    sets = ii.sets;
    pls = [];
    for kk = 1:numel(sets)
      pls = [pls getDefaultPlist(sets{kk})];
    end
  end
  % Build info object
  ii = minfo(mfilename, mfilename('class'), 'UniTN_Module', utils.const.categories.sigproc, '', sets, pls);
  ii.setModifier(false);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FUNCTION:    getDefaultPlist
%
% DESCRIPTION: Get Default Plist
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--------------------------------------------------------------------------
% Get Default Plist
%--------------------------------------------------------------------------
function plout = getDefaultPlist(set)
  persistent pl;
  persistent lastset;
  if ~exist('pl', 'var') || isempty(pl) || ~strcmp(lastset, set)
    pl = buildplist(set);
    lastset = set;
  end
  plout = pl;
end

function pl = buildplist(set)
  
  ii = ao.getInfo(mfilename, set);
  pl = ii.plists(1);

end
