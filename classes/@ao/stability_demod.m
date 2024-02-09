% STABILITY_DEMOD performs demodulation of signal, averaged over cuts of data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: STABILITY_DEMOD is ao version (a pure wrapper) of the
% function that performs sinusoidal (and cosinusoidal) demodulation
% of signal y(t), averaged over cuts of data
%
% CALL:        bs = stability_demod(a1,pl)
%              bs = a1.stability_demod(pl)
%
% INPUTS:      a1   - input analysis object
%              pl   - input parameter list
%
% OUTPUTS:     bs   - array of analysis objects, one for each phase
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'stability_demod')">Parameters Description</a>
%
% VERSION:    $Id: stability_demod.m 5584 2015-06-22 13:36:28Z mauro.hueller $
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = stability_demod(varargin)

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

% make copies of inputs
bs = copy(as, true);

% collect input histories
inhists = copy([as.hist], true);

% check number of input AO
if numel(as) ~= 1
    error('### stability_demod accepts only one input');
end

% combine plists
usepl = applyDefaults(getDefaultPlist, varargin{:});

% Modulation frequency
fmod = find(usepl, 'fmod');
if isempty(fmod)
    error('### Please provide a non-empty demodulation frequency!');
end

% Modulation starting time
t0 = find(usepl, 't0');
if isempty(t0)
    error('### Please provide a non-empty value for the modulation starting time!');
end
if isa(t0, 'time')
    t0 = double(t0 - as.t0);
end

% Number of cycles for each step
numcyc = find(usepl, 'numcyc');
if isempty(numcyc)
    numcyc = 1;
end

% Optional arguments
opt_arg = {};

% Demodulation time range
tran = find(usepl, 'tran');
if ~isempty(tran)
    opt_arg = [opt_arg 'tran' tran];
end

% Filter data with a suitable notch with period given
filt = find(usepl, 'filt');
if ~isempty(filt)
    opt_arg = [opt_arg 'filt' filt];
end

% Noise levels to estimate uncertainty
one_sidedASD_x_f = find(usepl, 'noise');
if ~isempty(one_sidedASD_x_f)
    switch class(one_sidedASD_x_f)
        case 'double'
            % Nothing to do in this case
        case {'ao', 'pest'}
            % Check the units are correct
            if isequal(toSI(bs.yunits / sqrt(unit('Hz'))), toSI(one_sidedASD_x_f.yunits))
                one_sidedASD_x_f = one_sidedASD_x_f.y;
            else
                error('### The data have %s units while the noise level have %s units', char(bs.yunits), char(one_sidedASD_x_f.yunits));
            end
        otherwise
            error('### Unsupported class %s for the noise level. Please use ''ao'', ''pest'', ''double''.', class(one_sidedASD_x_f));
    end
    opt_arg = [opt_arg 'noise' one_sidedASD_x_f];
else
    % If I want to compute the errors with the 'cos' or 'sin' option and I
    % leave the 'noise' option empty I get an error. Here I set the noise
    % level manually to zero in those cases.
    opt_arg = [opt_arg 'noise' 0];
end

% Estimate a posteriori uncertainty
errors = find(usepl, 'errors');

% Detrending order
sub = find(usepl, 'sub_mode');
if ~isempty(sub)
    opt_arg = [opt_arg 'sub_mode' sub];
end

% Detrending order
order = find(usepl, 'order');
switch order
    case 0
    case 1
        opt_arg = [opt_arg 'sub_mode' 'lin'];
    case 2
        opt_arg = [opt_arg 'sub_mode' 'quad'];
end

% Additional frequencies to filter out
frequencies = find(usepl, 'sigfilt');
if ~isempty(frequencies)
    opt_arg = [opt_arg 'sigfilt' frequencies];
end

% Use 'force_fund' option: that is start the analysis only at the
% zero-crossing of the first modulation cycle at the modulation frequency 
% defined in option 'fund' in the data stretch. Default is true
force_fund = find(usepl, 'force_fund');
if ~isempty(force_fund)
    opt_arg = [opt_arg 'force_fund' force_fund];
else
    opt_arg = [opt_arg 'force_fund' true];
end

% Define 'fund' frequency for the 'force_fund' option. If empty, it defaults
% to the modulation frequency not here but in the MATLAB stability_demod
fund = find(usepl, 'fund');
if ~isempty(fund)
    opt_arg = [opt_arg 'fund' fund];
end

% Verbosity
verb = find(usepl, 'talk');
if ~isempty(verb) && verb
    opt_arg = [opt_arg 'talk'];
else
    opt_arg = [opt_arg 'notalk'];
end

% Do not make the final plot
opt_arg = [opt_arg 'no_final_pl'];

% Do not make individual plots
opt_arg = [opt_arg 'nopl'];

% Call the actual function
if ~isempty(as.data.x)
    % Data are not evenly sampled
    warning('Data are not evenly sampled. This will make the call to notch_0 giving systematic errors!');
end
[tm, xm, cosi, sini, erri, trans] = stability_demod(as.x, as.y, fmod, t0, numcyc, ...
    opt_arg{:});

% Estimate uncertainty
switch lower(errors)
    % a-posteriori form scatter of cosine component
    case 'cos'
        warning('Calculating errors with the COS option. The NOISE level will be ignored!')
        % Detrend to have a more realistic estimate of the errors
        if numel(cosi) > 10
            % Order 4 detrend
            cosi_detrend = detrend(cosi, 4);
            err = std(cosi_detrend);
        else
            err = std(cosi);
        end

    % a-posteriori form scatter of sine component
    case 'sin'
        warning('Calculating errors with the SIN option. The NOISE level will be ignored!')
        % Detrend to have a more realistic estimate of the errors
        if numel(sini) > 10
            % Order 4 detrend
            sini_detrend = detrend(sini, 4);
            err = std(sini_detrend);
        else
            err = std(sini);
        end

    % form user input of cosine component
    case 'noise'
        err = erri;
end

% create new objects
pl_res =  plist('type', 'tsdata', 'yunits', as.yunits, 't0', as.t0);

% check requested component
mix = find(usepl, 'quad');

switch lower(mix)
    case {'cos', 'quad'}
        name = 'quad';
        bs = ao(tm, cosi, pl_res);
    case {'sin', 'phase'}
        name = 'phase';
        bs = ao(tm, sini, pl_res);
    case 'mean'
        name = 'mean';
        bs = ao(tm, xm, pl_res);
        % In this case set uncertainty to 0
        err = [];
    otherwise
        error('### Unknown quadrature specified');
end

% Set uncertainties
bs.setDy(err);

% Set name
bs.name = sprintf('stability_demod(%s) [%s]', ao_invars{1}, name);

% update history
bs.addHistory(getInfo('None'), usepl, ao_invars, inhists);

% Final plot
if find(usepl, 'plot')
    bs.iplot;
end

% Set output
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
ii = minfo(mfilename, mfilename('class'), 'UniTN_Module', utils.const.categories.sigproc, '$Id: stability_demod.m 5584 2015-06-22 13:36:28Z mauro.hueller $', sets, pl);
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

% Modulation frequency
p = param(...
    {'fmod', ['Demodulation frequency, in Hz']}, []);
pl.append(p);

% Modulation starting time
p = param(...
    {'t0', ['Modulation starting time.<br>'...
    'It can be a time object or a number of seconds, measured from the data reference time.']}, []);
pl.append(p);

% Quadrature
p = param({'quad', 'The quadrature to output. ''sin'', ''cos'' or ''mean''.'},{1, {'sin', 'cos', 'mean'}, paramValue.SINGLE});
pl.append(p);
p.addAlternativeKey('phase');

% Demodulation time range
p = param(...
    {'tran', ['Demodulation time range']}, []);
pl.append(p);

% Number of cycles for each step
p = param(...
    {'numcyc', ['Number of cycles for each step']}, 1);
pl.append(p);

% Filter data with a suitable notch with tau given
p = param(...
    {'filt', ['Filter data with a suitable notch filter.<br>' ...
    'Please provide the period that must be filtered out']}, []);
pl.append(p);

% Noise levels to estimate uncertainty
p = param(...
    {'noise', ['Noise levels to estimate uncertainty.<br>' ...
    'Please provide the square root of single sided PSD, either in double value, an AO or a PEST.<br>' ...
    'If empty, the uncertainty will be estimated from the scatter of the out-of-phase component.']}, []);
pl.append(p);

% Estimate uncertainty from scatter of results
p = param(...
    {'errors', ['Estimate uncertainty a posteriori from results scatter. Please choose between:<ul>' ...
    '<li>cos   - estimate uncertainty from scatter of in-quadrature component</li>' ...
    '<li>sin   - estimate uncertainty from scatter of in-phase component</li>' ...
    '<li>noise - estimate uncertainty from user input noise level</li></ul>' ...
    ]}, {1, {'cos', 'sin', 'noise'}, paramValue.SINGLE});
pl.append(p);

% Overall detrending order
p = param({'order', ['The order of detrending:<ul>', ...
    '<li>1 - subtract linear fit</li>', ...
    '<li>2 - subtract fit of polynomial, order 2</li></ul>']}, {1, {1, 2}, paramValue.SINGLE});
pl.append(p);

% Single cycle detrending order
p = param(...
    {'sub_mode', ['Detrending order for single cycle detrending. Please choose between:<ul>' ...
    '<li>'''' - parameter is ignored</li>' ...
    '<li>lin  - linear detrending</li>' ...
    '<li>quad - quadratic detrending</li></ul>']}, {1, {'', 'lin', 'quad'}, paramValue.SINGLE});
pl.append(p);

% Additional frequencies to filter out
p = param(...
    {'sigfilt', ['Additional frequencies to filter out']}, []);
pl.append(p);

% Verbosity level
p = param(...
    {'talk', ['Verbose output for the inner utilities']}, paramValue.FALSE_TRUE);
pl.append(p);

% 'force_fund' option
p = param(...
    {'force_fund', ['Start the analysis at the zero-crossing of the first cycle at fundamental frequency (may reduce the data length)']}, paramValue.FALSE_TRUE);
pl.append(p);

% Fundamental frequency for 'force_fund' option
p = param(...
    {'fund', ['Fundamental frequency for ''force_fund'' option']}, []);
pl.append(p);

% Final plot
p = param(...
    {'plot', ['Final plot']}, paramValue.FALSE_TRUE);
pl.append(p);

end
% END