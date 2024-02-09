% MAGNETIC_FIELD_SIGNAL extracts the magnetic field signal from
% magnetometer measurements made with and without sample under test
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: MAGNETIC_FIELD_SIGNAL extracts the magnetic field signal from
% magnetometer measurements made with and without sample under test. The
% magnetic field components must be included in AOs which are passed as
% inputs, either in a list or in a vector
%
% CALL:        bs = magnetic_field_signal(a1,a2,a3,...,pl)
%              bs = magnetic_field_signal(as,pl)
%              bs = as.magnetic_field_signal(pl)
%
% INPUTS:      aN   - input analysis objects
%              as   - input analysis objects array
%              pl   - input parameter list
%
% OUTPUTS:     bs   - array of analysis objects, one for each input
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'magnetic_field_signal')">Parameters Description</a>
%
% VERSION:    $Id: magnetic_field_signal.m 5080 2014-07-23 15:40:36Z mauro.hueller $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PARAMETERS:
%
% 'T_start'       - start time(s) of first (off) measurement
% 'Meas_period'   - length of each measurement
% 'N_repeat'      - number(s) of measures   
% 'T_trans'       - time to ignore at start of each measure
% 'First_pos'     - signal begins with first position 'on' or 'off'
% 'plot'          - shows an intermediate plot with sections and calculated
%                   values

function varargout = magnetic_field_signal(varargin)
  
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
  
  % Decide on a deep copy or a modify
  bs = copy(as, nargout);
  
  % combine plists
  usepl = applyDefaults(getDefaultPlist(), varargin{:});
  
  %  Extracts parameters
  T_start = find(usepl, 'T_start');
  Meas_period = find(usepl, 'Meas_period');
  N_repeat = find(usepl, 'N_repeat');  
  T_trans = find(usepl, 'T_trans');
  signal_sign = find(usepl, 'First_pos');
  
  % Intermediate plotting option    
  if utils.prog.yes2true(find(usepl, 'plot'))
    plotting_string = 'showmeas';
  else
    plotting_string = '';
  end
  
  % Loop over input AOs
  for jj = 1:numel(bs)
    
    % Here comes the real analysis
    % Just build a wrapper of the routine
    
    data = square_wave_signal_data(as(jj).x, as(jj).y, ...
      T_start, Meas_period, N_repeat, T_trans, signal_sign, ...
      char(as(jj).yunits), plotting_string);
    
    % create new object with the calculated data
    bs(jj).setX(data.t_signal);
    bs(jj).setY(data.y_signal);
    bs(jj).setDy(data.y_err);
    bs(jj).setFs(NaN);
    
    % set name
    bs(jj).name = sprintf('%s(%s)', mfilename, ao_invars{jj});
    
    % Add history
    bs(jj).addHistory(getInfo('None'), usepl, ao_invars(jj), bs(jj).hist);    
    
    % add descriptions
    bs(jj).setDescription(find(usepl, 'comment'));
    
  end % loop over analysis objects
  
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
    pl   = getDefaultPlist();
  end
  % Build info object
  ii = minfo(mfilename, 'ao', 'UniTN_Module', utils.const.categories.sigproc, '$Id: magnetic_field_signal.m 5080 2014-07-23 15:40:36Z mauro.hueller $', sets, pl);
end

%--------------------------------------------------------------------------
% Get Default Plist
%--------------------------------------------------------------------------
function pl = getDefaultPlist()
  pl = plist(...
    {'T_start','start time(s) of first (off) measurement'}, '0', ...
    {'Meas_period','length of each measurement'}, '1', ...
    {'N_repeat','number(s) of measures'}, '1', ...
    {'T_trans','time to ignore at start of each measurement'}, '0', ...
    {'First_pos','signal begins with first position ''on'' or ''off'}, 'on', ...
    {'comment',['brief description of each measurement.<br>', ...
    'Please use ; as a separation character']}, '', ...
    {'plot', 'shows an intermediate plot with sections and calculated values'}, 'no' ...
    );
end
% END

