% IPLOTPSD plots the sqrt of PSD AOs, including error bars
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: IPLOTPSD is a wrapper of ao.iplot that plots the sqrt of PSD AOs, 
% including error bars.
%
% If the user chooses the (default) option 'log' for the 'yscale' parameter,
% the tool plots sqrt(S) with error bars that are calculated as:
% upper bound: sqrt(S+dS)
% lower bound: sqrt(S-dS)
%
% If the user chooses the option 'lin' for the 'yscale' parameter, then 
% the tool plots S on a linear scale, without any other action
%
% CALL:               hfig = iplotPSD(a1, a2, a3, ..., pl)
%              [hfig, hax] = iplotPSD(as, pl)
%         [hfig, hax, hli] = as.iplotPSD(pl)
%
% INPUTS:      aN   - input analysis objects
%              as   - input analysis objects array
%              pl   - input parameter list
%
% OUTPUTS:     hfig - handles to figures
%              hax  - handles to axes
%              hli  - handles to lines
%
% <a href="matlab:utils.helper.displayMethodInfo('ao', 'iplotPSD')">Parameters Description</a>
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = iplotPSD(varargin)
  
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
  
  % Find parameters values
  scale = find_core(pl, 'yscale');
  
  s = {};
  dsl = {};
  dsu = {};
  pl_iplot = plist();
  
  jj = 1;
  
  % Apply method to all AOs
  for kk = 1:numel(as)
    
    % Check we are dealing with fsdata objects
    if isa(as(kk).data, 'fsdata')
      S = as(kk);
      
        switch lower(scale)
          case {'log', 'logaritmic'}
            % Extract square root
            s{jj} = sqrt(S);
            
            % callerIsMethod stops the name getting set here, so do it
            % explicitely.
            s{jj}.setName(sprintf('sqrt(%s)', s{jj}.name));
            
            % Estimate upper and lower deviation
            if ~isempty(S.dy)
              dsl{jj} = s{jj} - sqrt(S - S.dy);
              dsu{jj} = sqrt(S + S.dy) - s{jj};
              % Reset the error to be sure we don't use them
              s{jj}.setDy([]);
            else
              dsl{jj} = [];
              dsu{jj} = [];
            end
            
            % Prepare a plotting plist
            pl_iplot = plist('yscales', 'log');
            
          case {'lin', 'linear'}
            % Just copy the object
            s{jj} = copy(S, true);
            % Use the errors as upper and lower deviation
            dsl{jj} = S.dy;
            dsu{jj} = S.dy;
            % Reset the error to be sure we don't use them
            s{jj}.setDy([]);
            
            % Prepare a plotting plist
            pl_iplot = plist('yscales', 'lin');
        end
      
      jj = jj + 1;
      
    else
      warning('### %s requires fsdata input objects. Skipping this one.', mfilename);
    end
    
  end
  
  % Add the error bars to the configuration plist
  pl_iplot.append('YERRL', dsl, 'YERRU', dsu);
  pl_iplot = combine(pl_iplot, pl);
  
  [hfig, hax, hli] = iplot(s{:}, pl_iplot.remove('YSCALE'));
  
  % Deal with outputs
  if nargout == 1
    varargout{1} = hfig;
  end
  if nargout == 2
    varargout{1} = hfig;
    varargout{2} = hax;
  end
  if nargout == 3
    varargout{1} = hfig;
    varargout{2} = hax;
    varargout{3} = hli;
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
  
  p = param({'YSCALE', ['The scale to be used on the y-axis', ...
    '<ul><li>Logaritmic scale. The tool plots sqrt(S) with error bars that are calculated as:' ...
    '<ul><li>upper bound: sqrt(S+dS)</li>' ...
    '<li>lower bound: sqrt(S-dS)</li></ul><li>Linear scale. The tool plots S on a linear scale, without any other action</li></ul>']}, {1, {'log', 'lin'}, paramValue.SINGLE});
  pl.append(p);
  
  pl_iplot = ao.getInfo('iplot', 'Frequency-series Plot').plists;
  pl.append(pl_iplot.remove({...
    'FUNCTION', ...
    'XERRL', ...
    'XERRU', ...
    'YERRL', ...
    'YERRU', ...
    'XSCALES', ...
    'YSCALES', ...
    'AUTOERRORS', ...
    'COMPLEXPLOTTYPE', ...
    }));
  
end


% END
