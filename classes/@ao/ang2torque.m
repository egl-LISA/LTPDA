% ANG2TORQUE gives the cos and sin components of the torque N(f)
% at frequency f, given measured cos and sin components of the pendulum
% deflection phi(f) at frequency f
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: ANG2TORQUE gives the cos and sin components of the torque 
%              N(f) at frequency f, given measured cos and sin components 
%              of the pendulum deflection angle a(f) at frequency f
%
% CALL:        N = ang2torque(a_cos, a_sin, pl)
%              N = ang2torque(a_cos, a_sin)
%
% INPUTS:      a_cos   - input analysis object with cosine component
%              a_sin   - input analysis object with sine component
%              pl      - input parameter list
%
% OUTPUTS:     N   - array of 2 analysis objects:
%                    torque cosine component
%                    torque sine component
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'time_torque')">Parameters Description</a>
%
% VERSION:    $Id: ang2torque.m 5080 2014-07-23 15:40:36Z mauro.hueller $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = ang2torque(varargin)

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

if numel(as) ~= 2
    error('### ang2torque only accepts two inputs AOs.');
end

if nargout == 0
    error('### ao/ang2torque can not be used as a modifier method. Please give at least one output');
end

% Decide on a deep copy or a modify, making copies or handles to inputs
bs = copy(as, nargout);

% combine plists
usepl = applyDefaults(getDefaultPlist, varargin{:});

% collect input histories
inhists = copy([as.hist], 1);

% Pendulum moment of inertia
I = find(usepl, 'I');
if isempty(I)
    error('### Please provide the pendulum moment of inertia in kg m^2 / rad');
end

switch class(I)
    case 'ao'
    case 'double'
        I = ao(I, plist('yunits', 'kg m^2 / rad'));
    otherwise
        error('### Please provide the pendulum moment of inertia in an ao or in a double');
end

% Pendulum quality factor
Q = find(usepl, 'Q');
if isempty(Q)
    error('### Please provide the pendulum quality factor');
end

switch class(Q)
    case 'ao'
    case 'double'
        Q = ao(Q, plist('yunits', ''));
    otherwise
        error('### Please provide the pendulum quality factor in an ao or in a double');
end

% Free oscillation period
T_0 = find(usepl, 'T0');
if isempty(T_0)
    T_0 = find(usepl, 'period');
    if isempty(T_0)
        f_0 = find(usepl, 'f0');
        if isempty(f0)
            error('### Please provide the pendulum free period in s or resonant frequency in Hz');
        end
        T_0 = 1./f_0;
    end
end

switch class(T_0)
    case 'ao'
    case 'double'
        T_0 = ao(T_0, plist('yunits', 's'));
    otherwise
        error('### Please provide the pendulum free period in an ao or in a double');
end

% Working frequency
f = mfind(usepl, 'frequency', 'freq');
if isempty(f)
    error('### Please provide a working frequency in Hz');
end

switch class(f)
    case 'ao'
        f.setYunits('s^-1');
    case 'double'
        f = ao(f, plist('yunits', 's^-1'));
    otherwise
        error('### Please provide the working frequency in an ao or in a double');
end

% Damping mechanism
damping_mech = find(usepl, 'damping');

%%% Calculates total spring constant from period and moment of inertia
Gam = I .* (2*pi ./ T_0).^2;

% Go with the actual calculation
switch lower (damping_mech)
    case {'struct', 'structural', 'fiber'}
        % Strucural (fiber) damping
        utils.helper.msg(msg.PROC1, 'using structural damping');
        bs(1) = Gam .* (as(1) .* (1 - (f .* T_0).^2) + as(2) ./ Q);
        bs(2) = Gam .* (as(2) .* (1 - (f .* T_0).^2) - as(1) ./ Q);
        if ~isempty(as(1).dy) && ~isempty(as(2).dy)
            bs(1).setDy(...
                Gam.y .* sqrt((as(1).dy).^2 .* (1 - (f.y .* T_0.y).^2).^2 + (as(2).dy).^2 ./ (Q.y).^2));
            bs(2).setDy(...
                Gam.y .* sqrt((as(2).dy).^2 .* (1 - (f.y .* T_0.y).^2).^2 + (as(1).dy).^2 ./ (Q.y).^2));
        else
            bs(1).setDy([]);
            bs(2).setDy([]);
        end
    case {'visc', 'viscous', 'gas'}
        % Viscous (gas) damping
        utils.helper.msg(msg.PROC1, 'using viscous damping');
        bs(1) = Gam .* (as(1) .* (1 - (f .* T_0).^2) + as(2) .*  f .* T_0 ./ Q);
        bs(2) = Gam .* (as(2) .* (1 - (f .* T_0).^2) - as(1) .*  f .* T_0 ./ Q);
        if ~isempty(as(1).dy) && ~isempty(as(2).dy)
            bs(1).setDy(...
                Gam.y .* sqrt((as(1).dy).^2 .* (1 - (f.y .* T_0.y).^2).^2 + (as(2).dy).^2 .* (f.y .* T_0.y ./ Q.y).^2));
            bs(2).setDy(...
                Gam .* sqrt((as(2).dy).^2 .* (1 - (f.y .* T_0.y).^2).^2 + (as(1).dy).^2 .* (f.y .* T_0.y ./ Q.y).^2));
        else
            bs(1).setDy([]);
            bs(2).setDy([]);
        end
    otherwise
        error(['### Unsupported damping mechanism ' damping_mech '. Please choose between ''struct'' and ''visc''']);
end


for jj = 1:2
    % simplify units
    bs(jj).simplifyYunits;
    if eq(bs(jj).yunits, unit('kg m^(2) s^(-2)'))
        bs(jj).setYunits('N m');
    end

    % set name
    bs(jj).name = sprintf('ang2torque(%s)', ao_invars{jj});

    % update history
    bs(jj).addHistory(getInfo('None'), usepl, ao_invars, inhists);

end

% assign output
varargout{1} = bs;

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
ii = minfo(mfilename, 'ao', 'UniTN_Module', utils.const.categories.sigproc, '$Id: ang2torque.m 5080 2014-07-23 15:40:36Z mauro.hueller $', sets, pl);
% Set the default property of the method as modifier or not (GUI)
ii.setModifier(false);
% Set the minumum number of inputs/outputs for the block (GUI)
ii.setArgsmin(2);
ii.setOutmin(2);
end

%--------------------------------------------------------------------------
% Get Default Plist
%--------------------------------------------------------------------------
function pl = getDefaultPlist()

pl = plist();

% Moment of inertia
p = param({'I', 'Moment of inertia. Input a cdata ao (units of kg*m^2/rad expected) or a number.'}, 3.7e-3);
pl.append(p);

% Quality factor
p = param({'Q', 'Quality factor. Input a cdata ao (dimensionless expected) or a number'}, 3000);
pl.append(p);

% Free oscillation period
p = param({'T0', 'Pendulum free oscillation period. Input a cdata ao (units of s expected) or a number'}, []);
pl.append(p);

% Mechanism of damping
p = param({'DAMPING', ['Mechanism for damping.<br>Choose between<ul>', ...
    '<li>''struct'' - fiber structural damping</li>', ...
    '<li>''visc'' - viscous damping</li></ul>']}, {2, {'STRUCT', 'VISC'}, paramValue.SINGLE});
pl.append(p);

% Working frequency
p = param({'FREQ', 'Working frequency. Input a cdata ao (units of Hz expected) or a number'}, []);
pl.append(p);
end
% END