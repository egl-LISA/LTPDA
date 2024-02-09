% K2DEG Converts AOs containing data in Kelvin to AOs containing
%       data in degrees Celsius
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: K2DEG Converts AOs containing data in Kelvin to AOs containing
%                    data in degrees Celsius
% CALL:        b = K2deg(a)
%              b = K2deg(a1, a2) - convert both a1 and a2;
%                                           b is then a 2x1 vector.
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'K2deg')">Parameters Description</a>
%
% EXAMPLES:
%                >> a = ao(plist('waveform', 'noise', 'fs', 10, 'nsecs', 20, 'yunits', 'degC'));
%                >> b = K2deg(a);
%
%
% VERSION:     $Id: K2deg.m 3561 2012-09-13 12:24:09Z mauro.hueller $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = K2deg(varargin)
  
  callerIsMethod = utils.helper.callerIsMethod;
  
  % Check if this is a call for parameters
  if utils.helper.isinfocall(varargin{:})
    varargout{1} = getInfo(varargin{3});
    return
  end
  
  import utils.const.*
  utils.helper.msg(msg.PROC3, 'running %s/%s', mfilename('class'), mfilename);
  
  % Collect input variable names
  in_names = cell(size(varargin));
  for ii = 1:nargin,in_names{ii} = inputname(ii);end
  
  % Collect all AOs
  [as, ao_invars] = utils.helper.collect_objects(varargin(:), 'ao', in_names);
  
  % Decide on a deep copy or a modify
  bs = copy(as, nargout);
  
  % Apply defaults to plist
  pl = applyDefaults(getDefaultPlist, varargin{:});
  
  % Definitions
  unit_in  = 'K';
  unit_out = 'degC';
  offset   = - 273.15;
  
  % Loop over input AOs
  for jj = 1:numel(bs)
    
    % Checking the object units
    input_unit = bs(jj).yunits;
    if isequal(input_unit, unit(unit_in))
      
      % Shift the data by offset
      bs(jj).setY(bs(jj).y + offset);
      
      % Set the new units
      bs(jj).setYunits(unit_out);
    else
      utils.helper.msg(msg.IMPORTANT, 'The %dth input object has units different than %s. Doing nothing!', unit_in, jj);
    end
    
    if ~callerIsMethod
      % set name
      bs(jj).name = sprintf('K2deg(%s)', ao_invars{jj});
      % Add history
      bs(jj).addHistory(getInfo('None'), pl, ao_invars(jj), bs(jj).hist);
    end

  end
  
  % Set output
  varargout = utils.helper.setoutputs(nargout, bs);
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
    pl   = getDefaultPlist;
  end
  % Build info object
  ii = minfo(mfilename, 'ao', 'UniTN_Module', utils.const.categories.sigproc, '$Id: K2deg.m 3561 2012-09-13 12:24:09Z mauro.hueller $', sets, pl);
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
  
  pl = plist();
    
end

