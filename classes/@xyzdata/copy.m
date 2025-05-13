% COPY makes a (deep) copy of the input xyzdata objects.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: COPY makes a deep copy of the input xyzdata objects.
%
% CALL:        b = copy(a, flag)
%
% INPUTS:      a    - input xyzdata object
%              flag - 1: make a deep copy, 0: return copies of handles
%
% OUTPUTS:     b - copy of inputs
%
% This is a transparent function and adds no history.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = copy(old, deepcopy)

if deepcopy
    % Loop over input xyzdata objects
    new = createArray(size(old), 'xyzdata');
    obj = copy@data3D(new, old, 1);
else
    obj = old;
end

varargout{1} = obj;
end