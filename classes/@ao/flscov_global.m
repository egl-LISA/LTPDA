% FLSCOV_GLOBAL.M - Tool to perform a least square fit in frequency domain
% with multiple experiments. It work also with a signle experiment
%
% DESCRIPTION:
%
% CALL:
%       >> pest_obj = flscov_global([ao1_target,...,
%       aoN_target],[ao1_term1,..., aoN_term1],...,[ao1_termM,...,
%       aoN_termM],pl)
%
%       where the first array of the input is considered to be
%       the output data in the relations
%
%               ao1_target = c_1 * ao1_term1 + c_2 * ao1_term2 + ... + c_N
%               * ao1_termM
%               ...
%               aoN_target = c_1 * aoN_term1 + c_2 * aoN_term2 + ... + c_N
%               * aoN_termM
%
%       The c_i are the parameters to be estimated.
%
% PARAMETERS: - pest_obj:   pest object
%             - ao:         ao object
%             - pl:         plist
%
%    EXAMPLE: - flscov_global(p,plist())
%
%<a href="matlab:utils.helper.displayMethodInfo('ao', 'flscov_global')">ParametersDescription</a>
%
% DV 2017
%
%

function varargout = flscov_global(varargin)
  
  %%% Check if this is a call for parameters
  if utils.helper.isinfocall(varargin{:})
    varargout{1} = getInfo(varargin{3});
    return
  end
  
  import utils.const.*
  utils.helper.msg(msg.PROC3, 'running %s/%s', mfilename('class'), mfilename);
  
  % Collect input variable names
  in_names = cell(size(varargin));
  try for ii = 1:nargin,in_names{ii} = inputname(ii); end; end
  
  % Collect all AOs and plists
  [aos, ~] = utils.helper.collect_objects(varargin(:), 'ao', in_names);
  pl       = utils.helper.collect_objects(varargin(:), 'plist', in_names);
  
  % Decide on a deep copy or a modify
  in_aos = copy(aos, nargout);
  
  % Apply the defaults of the plist
  pl = applyDefaults(getDefaultPlist(), pl);
  
  % extract parameters out of the plist
  pTol       = pl.find('p tol');
  maxiter    = pl.find('maxiter');
  paramNames = pl.find('fitparams');
  w          = pl.find('w');
  Nexp       = pl.find('Nexp');
  
  if isempty(paramNames)
    for ii = 1:numel(in_aos)-1
      paramNames{ii} = sprintf('p%d',ii);
    end
  end
  
  % define plists
  psdpl = plist('Win',   pl.find('win'),...
    'navs',  pl.find('navs'),...
    'nfft',  pl.find('nfft'),...
    'olap',  pl.find('olap'),...
    'order', pl.find('order'));
  
  % Trim data?
  if ~isempty(pl.find('trim'))
    in_aos = split(in_aos, plist('offsets', pl.find('trim')));
  end
  
  % define a matrix of objects
%   aos_exp = matrix.initObjectWithSize(Nexp);
  aos_exp = ao.initObjectWithSize(numel(paramNames)+1,Nexp);
  
  % fill the matrix object to separate the different experiments
  kk=0;
  for ii=1:numel(paramNames)+1
    aos_exp(ii,:) = in_aos(kk+1:Nexp*ii);
    kk = kk + Nexp;
  end
  
  % Initialise objects
  pest_obj = pest.initObjectWithSize(1, maxiter);
  w_array = ao.initObjectWithSize(1, Nexp);
  w_array_zero = ao.initObjectWithSize(1, Nexp);
  res_psd_array = ao.initObjectWithSize(1, Nexp);
  residuals_array = matrix.initObjectWithSize(1, Nexp);
  fs_matrix = matrix.initObjectWithSize(1,Nexp);
  
  % Run over the experiments to generate once for all the inputs
  for hh = 1:Nexp
    
    % Perform FFT on the time series on a signel experiment
    fs = performFFT(aos_exp(:,hh), pl);
    
    plk1 = plist('samples',pl.find('k0'):pl.find('k1'):numel(fs(1).x));
    fs   = select(fs,plk1);
    fpl  = plist('frequencies',pl.find('frequencies'));
    
    % Collect the fft frequency series
    for mm = 1:size(fs,1)
      for nn = 1:size(fs,2)
        fs(mm,nn)   = split(fs(mm,nn), fpl);
      end
    end
    fs_matrix(hh) = fs;
  end
  
  
  % Perform the iterative least squares scheme
  for iter = 1:maxiter
    
    newvar_array = zeros(numel(paramNames)+1,numel(paramNames)+1);
    
    % Run overthe experiment
    for hh = 1:Nexp
      
      fs_iter = fs_matrix(hh).objs;
      
      % Get the noise for each experiment
      if isequal(iter,1)
        % Get the weigths
        w = getWeights(w_array(hh), fs_iter, pl);
        w = double(w); % get the doubles
      else
        w =  w_array(hh);
        w =  double(w);
      end
      
      % Build the matrix of the first experiment to be inverted
      newvar = lsf_global(fs_iter, w);
      
      % Sum the matrices elements by elements
      newvar_array = newvar_array + newvar;
      
      % store the noise
      w_array_zero(hh) = w;
      w = [];
      
    end
    
    % Minimize
    B = 4*newvar(2:end,1);
    Anm = 4*newvar(2:end,2:end);
    invAnm = Anm\eye(size(Anm));
    p = Anm\B;
    
    % Get correlation
    [ExpCorrC, ~] = utils.math.cov2corr(invAnm);
    
    % Define pest object
    pest_obj(iter) = pest(p);
    pest_obj(iter).setNames(paramNames{:});
    pest_obj(iter).setDy(sqrt(diag(invAnm)));
    pest_obj(iter).setCov(invAnm);
    pest_obj(iter).setCorr(ExpCorrC);
    pest_obj(iter).setYunits(pl.find('yunits'));
    pest_obj(iter).setName(sprintf('Parameter'));
    
    % Compute the residuals for each experiment
    aos_exp.simplifyYunits;
    
    for hh = 1:Nexp
      [residuals, res_psd, w] = computeResiduals(aos_exp(:,hh), p, plk1, pl);
      w_array(hh) = w;
      res_psd_array(hh) = res_psd;
      residuals_array(hh) = residuals;
    end
    
    % Get the chi square
%     sw = sum(sum(w_array.y))/sum(sum(w_array_zero.y));
% Temporary fix for getting the chi_square
    num = 0;
    den = 0;
    for hh = 1:Nexp
    num = sum(w_array(hh).y) + num;
    den = sum(w_array_zero(hh).y) + den;
    end
    sw = num/den;
    
    % Print message
    printMessage(iter);
    fprintf('* chi^2: %s\n', sw);
    
    % Set the chi^2
    pest_obj(iter).setChi2(sw);
    
    % Show results
    table(pest_obj(iter));
    
    % Stopping criterion
    if iter > 1
      % Get the stopping criterion
      dw = abs(sw - 1);
      % terminate?
      if all(dw < pTol)
        fprintf('\n')
        fprintf('*** \n')
        fprintf('*** Tolerance criterion satisfied. Stopping re-weighted least squares iterations. *** \n')
        fprintf('*** \n')
        fprintf('\n')
        break
      end
    end
    
    % store the values
    lastp0 = p;
  end
  
  % If you want to have a comaprative plot
  if pl.find_core('doplot')
    for hh = 1:Nexp
      try
        % create a target with the same lenght of residuals
        target_ao = split(aos_exp(1,hh), plist('offsets', pl.find('trim')));
        
        % make the psd of the target
        target_ao_psd = psd(target_ao, psdpl);
        
        % select the frequency bin of the target
        plk_plot = plist('samples',1:pl.find('k1'):numel(target_ao_psd.x));
        target_ao_psd_select = select(target_ao_psd,plk_plot);
        
        % select the frequency range of the analysis
        target_ao_psd_split = split(target_ao_psd_select, fpl);
        
        % plot psd of target versus residuals
        iplotPSD(target_ao_psd_split, res_psd_array(hh), plist('errorbartype','area'));
        
      catch ME
        fprintf('### Failed produce plot of the residuals. Error: %s \n', ME.message)
      end
    end
  end
  
  % Delete empty pests
  pest_obj(iter+1:end) = [];
  
  % Create the model and append it  
  outModel = getmodelout(aos_exp(:,1), pest_obj);
  
  % Create output (set the resulting parameters as constants)
  outModel.setParamsToConst(pest_obj(end));
  out_pest = pest_obj(end).setModels(outModel);
  
  out_obj = collection(out_pest, residuals_array);
  out_obj.setProcinfo(plist('history pests', pest_obj(1:iter-1)));
  out_obj = addHistory(out_obj, getInfo('None'), pl, [], [aos_exp.hist]);
  
  % Set outputs
  if nargout > 0
    varargout{1} = out_obj;
  else
    error('### flscov cannot be used as a modifier!');
  end
  
  
end % END

%--------------------------------------------------------------------------
% get model out
%--------------------------------------------------------------------------
function [modelmfh] = getmodelout(in_aos, pest_obj)
  
  % prepare model, units, names
  Nobjs     = numel(in_aos);
  names     = cell(1, Nobjs);
  xvar      = cell(1, Nobjs);
  xvarnames = cell(1, Nobjs);
  exprs     = {'\(|)', '\W'};
  
  % initialise
  xvar{1}      = in_aos(1);
  xvarnames{1} = in_aos(1).name;
  xvarnames{1} = regexprep(in_aos(1).name,exprs,'');
  
  modelmfh  = xvarnames{1};
  pestname  = pest_obj(1).names;
  
  for jj = 1:numel(pestname)
    names(jj)       = pestname(jj);
    xvar{jj+1}      = in_aos(jj+1);
    xvarnames{jj+1} = in_aos(jj+1).name;
    xvarnames{jj+1} = regexprep(xvarnames{jj+1},exprs,'');
    modelmfh = [modelmfh '-' names(jj) '*' xvarnames(jj+1)];
  end
  
  modelmfh_str = strjoin(modelmfh);
  
  % Prepare the smodel
  modelmfh = mfh(plist('name', 'model',...
    'func',       modelmfh_str, ...
    'constants',        xvarnames, ...
    'constant objects', xvar,...
    'params',           pest_obj(end)...
    ));
  
end
%--------------------------------------------------------------------------
% Compute the residuals
%--------------------------------------------------------------------------
function [residual, res_psd, w] = computeResiduals(ts, p, plk1, pl)
  
  model  = [];
  yunits = pl.find_core('Yunits');
  
  % check if isempty
  if isempty(yunits)
    warning(['### The Y-units of at least one of the parameters is empty. The residual computation '...
      'might fail if the result depends on their Y-units.']);
    yunits = unit.initObjectWithSize(1, numel(p));
  end
  
  try
    % create AOs with the correct yunits and try to compute the residuals
    for ii=1:numel(ts)-1
      if iscell(yunits)
        
        param = ao(plist('yvals', p(ii), 'yunits', yunits{ii}));
        
      elseif strcmpi(class(yunits), 'unit')
        
        param = ao(plist('yvals', p(ii), 'yunits', yunits(ii)));
        
      else
        error('### The Y-units of the parameters must be either in a cell array, or LTPDA unit objects...');
      end
      % evaluate the model
      model = model + param.*ts(1+ii);
    end
    
    % Fix y-units
    model.toSI;
    
    % Calculate residuals: sometimes needs consolidation
    [ts(1), model] = consolidate(ts(1), model);
    residual = ts(1) - model;
    
    % set name
    residual.setName('Residuals');
    
    % The PSD of the residuals
    freqs = pl.find('frequencies');
    %     res_psd1 = psd(residual, psdpl);
    res_fft = performFFT(residual, pl);
    res_psd = 2.*average(abs(res_fft).^2);
    res_psd = select(res_psd,plk1);
    
    % I need to make sure the frequency vector is the same because
    % it is calculated slightly differently between wosa and fft methods as
    % such there could be a numerical issue
    
    res_psd = split(res_psd, plist('frequencies',freqs));
    
    %     res_psd.setX(fs(1).x);
    
    % Update the weights for the n-th iteration
    w = double(res_psd);
  catch ME
    fprintf('### Failed to compute the residuals. Error: %s \n', ME.message)
    residual = ao();
    res_psd  = ao();
  end
  
end

%--------------------------------------------------------------------------
% Perform FFT on the time-series
%--------------------------------------------------------------------------
function fs = performFFT(ts, pl)
  
  %   navs  = pl.find('navs');
  %   olap  = pl.find('olap');
  freqs = pl.find('frequencies');
  
  L     = numel(ts(1).y);
  usepl = utils.helper.process_spectral_options(pl,'lin',L);
  nfft  = usepl.getParamValueForParam('NFFT');
  olap  = usepl.getParamValueForParam('OLAP');
  xOlap = round(olap*nfft/100);
  
  % Compute segment details
  nSegments = fix((L-xOlap)./(nfft - xOlap));
  
  % Compute start and end indices of each segment
  segmentStep   = nfft-xOlap;
  segmentStarts = 1:segmentStep:nSegments*segmentStep;
  segmentEnds   = segmentStarts+nfft-1;
  
  % get # of time-series
  N_ts = numel(ts);
  ts_s = ao.initObjectWithSize(N_ts, nSegments);
  
  for ii = 1:nSegments
    spl      = plist('samples', [segmentStarts(ii) segmentEnds(ii)]);
    ts_s(:,ii) = split(ts, spl);
  end
  
  fs = performFFTcore(ts_s, N_ts, nSegments, freqs, pl);
  
end

%--------------------------------------------------------------------------
% Get the weights function
%--------------------------------------------------------------------------
function w = getWeights(w, fs, pl)
  
  % Get the psd plist
  psdpl = subset(pl, {'win','olap','navs'});
  
  if isempty(w.data)
    w = ones(1,numel(double(fs(1))))'; % initial weights
  else
    if isa(w.data, 'tsdata')
      w = psd(w, psdpl); % Do the PSD if time-series
    end
    w = split(w, plist('frequencies',pl.find('frequencies')));
    %     w = interp(w, plist('vertices', fs(1).x));
  end
  
end

%--------------------------------------------------------------------------
% Print message at each loop function
%--------------------------------------------------------------------------
function printMessage(iter)
  
  fprintf(' \n')
  fprintf('************* Finished loop %d ************* \n', iter)
  fprintf(' \n')
  
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
  ii = minfo(mfilename, mfilename('class'), 'ltpda', utils.const.categories.helper, '', sets, pl);
end


%--------------------------------------------------------------------------
% Get Default Plist
%--------------------------------------------------------------------------
function plout = getDefaultPlist()
  persistent pl;
  if exist('pl', 'var')==0 || isempty(pl)
    pl = buildplist();
  end
  plout = pl;
end

function pl = buildplist()
  pl = plist();
  
  p = param({'FITPARAMS', 'A cell array containing the names of the parameters to be estimated.'}, paramValue.EMPTY_CELL);
  pl.append(p);
  
  p = param({'FREQUENCIES','The frequency range. Must be a [2x1] array with the minimum and maximum frequencies of the analysis.'},  paramValue.DOUBLE_VALUE([]));
  p.addAlternativeKey('f');
  p.addAlternativeKey('freqs');
  pl.append(p);
  
  p = param({'NAME','The name of the result of the fit.'},  paramValue.STRING_VALUE('Frequency domain chi^2 fit'));
  pl.append(p);
  
  p = param({'TRIM','A 2x1 vector that denotes the samples to split from the star and end of the time-series (split in offsets).'},  paramValue.DOUBLE_VALUE([]));
  pl.append(p);
  
  p = param({'NFFT','nfft'},  paramValue.DOUBLE_VALUE([0]));
  pl.append(p);
  
  p = param({'WIN','The window to apply to the data.'},  paramValue.STRING_VALUE('BH92'));
  pl.append(p);
  
  p = param({'NAVS', 'The Number of averages for the PSD of the noise.'}, 10);
  pl.append(p);
  
  p = param({'OLAP', 'The segment percent overlap [-1 == take from window function]'}, -1);
  pl.append(p);
  
  p = param({'NOISE MODEL',['The given noise model. It may be a) an AO time-series with the appropriate Y units, b) '...
    'an AO frequency-series of the correct size (NoutputsXNoutputs), c) a SMODEL (function of freqs) '...
    'of the correct size (NoutputsXNoutputs) d) a MFH object. ']},  paramValue.EMPTY_DOUBLE);
  pl.append(p);
  
  p = param({'INTERPOLATION METHOD', 'The interpolation method for the computation of the inverse cross-spectrum matrix.'}, ...
    {2, {'nearest', 'linear', 'spline', 'pchip', 'cubic', 'v5cubic'}, paramValue.SINGLE});
  pl.append(p);
  
  p = param({'ORDER',['The order of segment detrending:<ul>', ...
    '<li>-1 - no detrending</li>', ...
    '<li>0 - subtract mean</li>', ...
    '<li>1 - subtract linear fit</li>', ...
    '<li>N - subtract fit of polynomial, order N</li></ul>']}, paramValue.DETREND_ORDER);
  p.val.setValIndex(-1);
  pl.append(p);
  
  p = param({'YUNITS', 'The Y units of the parameters to be estimated. The ''UNIT'' objects must be used.'}, unit());
  pl.append(p);
  
  p = param({'DOPLOT', 'True-False flag to plot the residual time series.'}, paramValue.TRUE_FALSE);
  pl.append(p);
  
  p = plist({'BIN DATA','Set to true to re-bin the measured noise data.'}, paramValue.TRUE_FALSE);
  pl.append(p);
  
  p = plist({'FIT NOISE MODEL','Set to true to attempt a fit on the noise spectra using the ''polyfitSpectrum'' function.'}, paramValue.FALSE_TRUE);
  pl.append(p);
  
  p = plist({'POLYNOMIAL ORDER','The order of the polynomial to be used in the ''polyfitSpectrum'' function.'}, paramValue.DOUBLE_VALUE(-10:10));
  pl.append(p);
  
  p = param({'k0','The first FFT coefficient of the analysis. All K<K1 coefficients are dropped.'},  paramValue.DOUBLE_VALUE(5));
  pl.append(p);
  
  p = param({'k1','The k1 coefficient to downsample in frequency domain. More info found in Phys. Rev. D 90, 042003. If left empty, all the spectra is used.'},  paramValue.DOUBLE_VALUE(4));
  pl.append(p);
  
  p = param({'P TOL', 'The tolerance for terminating the outer loop. The iterations will stop if the change in the p0-p0_previous is less than this value.'}, paramValue.DOUBLE_VALUE(1e-6));
  pl.append(p);
  
  p = param({'MAXITER', 'The maximum number of iterations of the outer chi^2 loop.'}, paramValue.DOUBLE_VALUE(30));
  pl.append(p);
  
  p = param({'NEXP', 'The number of experiment.'}, paramValue.DOUBLE_VALUE(1));
  pl.append(p);
  
  p = param({'WEIGHTS', 'A given frequency or time series to be used as initial weights in the calculation.'}, paramValue.EMPTY_DOUBLE);
  p.addAlternativeKey('W');
  pl.append(p);
  
end

% END
