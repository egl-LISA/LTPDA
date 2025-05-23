% COPY makes a (deep) copy of the input ssmblock objects.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: COPY makes a deep copy of the input ssmblock objects.
%
% CALL:        b = copy(a, flag)
%
% INPUTS:      a    - input ssmblock object
%              flag - 1: make a deep copy, 0: return copies of handles
%
% OUTPUTS:     b - copy of inputs
%
% This is a transparent function and adds no history.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = copy(old, deepcopy)

if deepcopy
    % Loop over input ssmblock objects
    new = createArray(size(old), 'ssmblock');

    for kk=1:numel(old)
        new(kk).name        = old(kk).name;
        new(kk).ports       = copy(old(kk).ports, 1);
        new(kk).description = old(kk).description;
    end
else
    new = old;
end

varargout{1} = new;
end