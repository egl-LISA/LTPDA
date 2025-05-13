%
% Initialize Object with size for the MCMC class
%
function obj = initObjectWithSize(varargin)
  obj = createArray([varargin{:}], 'MCMC');
end
