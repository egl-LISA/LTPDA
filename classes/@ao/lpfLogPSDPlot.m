% LPFLOGPSDPLOT computes a log scale PSD with minimal correlation using a
% BH92 window.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: LPFLOGPSDPLOT computes a log scale PSD with minimal correlation using a
% BH92 window. It also produces a plot showing the Nsigma confidence
% intervals.
%
%
% CALL:               
%                           S = lpfLogPSDPlot(a1, a2, a3, ..., pl)
%                   [S, hfig] = lpfLogPSDPlot(a1, a2, a3, ..., pl)
%              [S, hfig, hax] = lpfLogPSDPlot(as, pl)
%         [S, hfig, hax, hli] = as.lpfLogPSDPlot(pl)
%
%
% INPUTS:      aN   - input analysis objects
%              as   - input analysis objects array
%              pl   - input parameter list
%
% OUTPUTS:     S    - array of structures, one per input AO with fields Sxx, Smin, Smax
%              hfig - handles to figures
%              hax  - handles to axes
%              hli  - handles to lines
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'lpfLogPSDPlot')">Parameters Description</a>
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = lpfLogPSDPlot(varargin)
  
  import utils.const.*
  
  % Check if this is a call for parameters
  if utils.helper.isinfocall(varargin{:})
    varargout{1} = getInfo(varargin{3});
    return
  end
  
  utils.helper.msg(msg.PROC3, 'running %s/%s', mfilename('class'), mfilename);
  
  % Collect input variable names
  in_names = cell(size(varargin));
  try for ii = 1:nargin,in_names{ii} = inputname(ii); end; end
  
  % Collect all AOs
  [as, ao_invars] = utils.helper.collect_objects(varargin(:), 'ao', in_names);
  
  % Apply defaults to plist
  pl = applyDefaults(getDefaultPlist, varargin{:});
  
  Nmax     = pl.find('Nmax');
  Nsigma   = pl.find('Nsigma');
  Navs_out = cell(1, numel(as));
  masks = pl.find('mask');
  fmax =  pl.find('fmax');
  
  % check masks
  if numel(masks) > 0 
    if numel(masks) ~= numel(as)
      error('When specifying a mask AO, the number of masks must match the number of AOs');
    end
    % check that masks match
    for ii = 1:numel(as)
      try
        bb = masks(ii).*as(ii);
      catch ME
        error('mask and timeseries AO don''t seem to be compatible. %s',ME.message);
      end
    end
    mask = masks;
  else
    % make masks
    for ii = 1:numel(as)
      mask(ii) = copy(as(ii),1);
      mask(ii).setY(zeros(size(as(ii).y)));
    end
  end
  
  Ss = [];
  
  p = normcdf([-Nsigma Nsigma]);
  c = p(2)-p(1);
  
for dd=1:numel(as)
        
    % get data
    data = as(dd);
    msk = mask(dd);
    
    if Nmax == -1
      Nseg = data.len;
    else
      Nseg = Nmax;
    end
    
    if fmax == -1
      flim = data.fs/2;
    else
      flim = fmax;
    end
    
    % Compute frequencies
    
    dT = 1/data.fs;
    M = 4;
    
    r = 3/5;
    f = M/(Nseg * dT);
    fprintf('f(1) = %f, N=%d\n', f, floor(Nseg))
    L = Nseg;
    kk = 2;
    freqs = f;
    
    while f < flim
      N = r^(kk-2) * Nseg;
      f = 2*M/(N * dT);
      L = [L N];
      fprintf('f(%d) = %f, N=%d\n', kk, f, floor(N))
      kk = kk + 1;
      
      freqs = [freqs f];
      
    end    
    
    % Process segments
    
    fs = data.fs;
    Ndata = data.len;
    order = 1;
    x = data.data.y;
    m = msk.data.y;
    
    % get the right dimension
    xsize = size(x);
    if xsize(1) > xsize(2)
      x = x';
    end
    
    olap = 50;
    
    win = specwin('BH92');
    nf = numel(freqs);
    
    ENBW = zeros(1, nf);
    Sxx  = zeros(1, nf);
    S    = zeros(1, nf);
    navs = zeros(1, nf);
        
    for jj = 1:nf
      
      fprintf('computing frequency %04d of %d: %f Hz\n', jj, nf, freqs(jj));
      
      % compute DFT exponent and window
      l = floor(L(jj));
      switch lower(win.type)
        case 'kaiser'
          win = specwin(win.type, l, win.psll);
        otherwise
          win = specwin(win.type, l);
      end
      
      % window vector
      wvals = [win.win].';
      
      % segment start indices
      sidx = [1:l*olap/100:Ndata-l];
      
      % dft coefficients
      p     = -2*pi*1i.*[0:l-1]/fs;
      C     = exp(freqs(jj)*p);
      
      navs(jj) = numel(sidx);
      A  = 0.0;
      nskip = 0;
      for ii=1:navs(jj)
        
        % start and end indices for the current segment
        istart = sidx(ii);
        iend   = istart+l-1;
        
        % get segment data
        xs  =  [x(round(istart:iend))].';
        
        % get mask and check
        ms = [m(round(istart:iend))].';
        if any(ms == 1)
          nskip = nskip+1;
        else
          % detrend segment
          switch order
            case -1
              % do nothing
            case 0
              xs = xs - mean(xs);
            case 1
              xs = detrend(xs);
            otherwise
              xs = polydetrend(xs, order);
          end
          
          % window data
          xs = [wvals .* xs];
          
          % make DFT
          a   = C*xs;
          A   = A + a*conj(a);
        end
      end
      
      navs(jj) = navs(jj)-nskip;
      % scale and store results
      A2ns     = 2.0*A/navs(jj);
      S1       = win.ws;
      S12      = S1*S1;
      S2       = win.ws2;
      ENBW(jj) = fs*S2/S12;
      Sxx(jj)  = A2ns/fs/S2;
      S(jj)    = A2ns/S12;      
      
      a = navs(jj)-1;
      z = (1+c)/2;
      Smin(jj) = navs(jj) * Sxx(jj) ./ gammaincinv(z, a);
      
      z = (1-c)/2;
      Smax(jj) = navs(jj) * Sxx(jj) ./ gammaincinv(z, a);
      
    end % for j=1:nf
    
    So.f    = freqs;
    So.Smax = Smax;
    So.Sxx  = Sxx;
    So.Smin = Smin;
    
    % Keep the navs
    Navs_out{dd} = navs;
    
    Ss = [Ss So];
    
  end % loop over data
    
  hfig = figure;
  for kk=1:numel(Ss)
    lh(kk) = errorbar(freqs, sqrt(Ss(kk).Sxx), sqrt(Ss(kk).Sxx)-sqrt(Ss(kk).Smin), sqrt(Ss(kk).Smax)-sqrt(Ss(kk).Sxx), '.', 'markersize', 20, 'linewidth', 2);
    hold on
  end
  
  set(gca, 'yscale', 'log', 'xscale', 'log');
  grid on;
  
  set(gca, 'fontsize', 28, 'FontName', 'times');
  
  xh = xlabel('Frequency (Hz)');
  set(xh, 'interpreter', 'latex');
    
  lh = legend({as.name});
  set(lh, 'interpreter', 'latex')
  
  % create output AOs
  Sout = [];
  for jj=1:numel(Ss)
    % Smin
    bs = ao(plist('xvals', Ss(jj).f, 'yvals', Ss(jj).Smin, 'type', 'fsdata', 't0', as(jj).t0, 'name', sprintf('S_min(%s)', as(jj).name)));
    % Add history
    bs.addHistory(getInfo('None'), pl, ao_invars(jj), as(jj).hist);
    Sbs.Smin = bs;
    
    % Sxx
    bs = ao(plist('xvals', Ss(jj).f, 'yvals', Ss(jj).Sxx, 'type', 'fsdata', 't0', as(jj).t0, 'name', sprintf('S_xx(%s)', as(jj).name)));
    % Add history
    bs.addHistory(getInfo('None'), pl, ao_invars(jj), as(jj).hist);
    Sbs.Sxx = bs;
    
    % Smax
    bs = ao(plist('xvals', Ss(jj).f, 'yvals', Ss(jj).Smax, 'type', 'fsdata', 't0', as(jj).t0, 'name', sprintf('S_max(%s)', as(jj).name)));
    % Add history
    bs.addHistory(getInfo('None'), pl, ao_invars(jj), as(jj).hist);
    Sbs.Smax = bs;
    
    Sout = [Sout Sbs];
  end
    
  hax = gca;
  % Deal with outputs
  if nargout == 1
    varargout{1} = Sout;
  end
  if nargout == 2
    varargout{1} = Sout;
    varargout{2} = hfig;
  end
  if nargout == 3
    varargout{1} = Sout;
    varargout{2} = hfig;
    varargout{3} = hax;
  end
  if nargout == 4
    varargout{1} = Sout;
    varargout{2} = hfig;
    varargout{3} = hax;
    varargout{4} = Navs_out;
  end
  
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
  ii = minfo(mfilename, mfilename('class'), 'LPF_DA_Module', utils.const.categories.output, '', sets, pl);
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
  
  p = param({'Nmax', ['The maximum segment length (in samples) for the fft.']}, -1);
  pl.append(p);
  
  p = param({'Nsigma', ['The size of confidence limits in multiples of sigma.']}, 1);
  pl.append(p);
  
  p = param({'mask', ['Optional timeseries AO corresponding to a mask for times to '...
    'be excluded from the PSD estimate. Should match the start time, duration, ' ...
    'and sample rate of the input AO. For multiple inputs, use an array of AOs.']}, []);
  pl.append(p);
  
   p = param({'fmax', ['The maximum frequency (in Hz) that will be computed for the plot.']}, -1); 
  pl.append(p);
end


% END
