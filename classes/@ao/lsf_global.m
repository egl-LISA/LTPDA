%--------------------------------------------------------------------------
% Build the matrix to be inverted for the least square fit in frequency
% domain
%--------------------------------------------------------------------------
function varargout = lsf_global(varargin)
  
  
  fs = varargin{1};
  w = varargin{2};
  
  
  % Initialise
  N_fs = numel(fs(:,1));
  fs_all = [];
  % number of averages
  navs = numel(fs(1,:));
  newvar = zeros(N_fs, N_fs);
  newspec = repmat(sqrt(w),1,N_fs);
  
  % Run over the number of averages
  for nn = 1:navs
    fs_all = double(fs(:,nn))./newspec;
    newvar = newvar + real(fs_all'*ctranspose(fs_all'));
  end
  
  varargout{1} = newvar;
  
end
