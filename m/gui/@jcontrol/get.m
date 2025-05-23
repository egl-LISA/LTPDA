function s=get(obj, property)
% GET method overloaded for JCONTROL class
%
% Examples:
% a=get(obj)
% a=get(obj,PropertyName);
% 
% If obj is a vector of JCONTROLs, a cell array will be returned
%
% See also: jcontrol
%
% -------------------------------------------------------------------------
% Author: Malcolm Lidierth 07/07
% Copyright � The Author & King's College London 2007
% -------------------------------------------------------------------------

% No property: list contents
if nargin==1
    if numel(obj)==1
        s.hgcontainer=obj.hgcontainer;
        s.hgcontrol=obj.hgcontrol;
        s.hghandle=obj.hghandle;
    else
        display(obj);
    end
    return
end

% Must specify a single property
if nargin>2
    error('Too many input arguments');
end

% Ensure lower-case
property=lower(property);

% Vector of JCONTROLs on input
% Call GET on each in turn returning a cell array
if numel(obj)>1
    if nargout>0
        % Pre-allocate
        s=cell(1,numel(obj));
        for idx=1:numel(obj)
            % Recursive call
            s{idx}=get(obj(idx),property);
        end
        return
    else
        % Stop problems in nested gets e.g. (get(get,...)...)
        error('Must specify a left-hand side assignment with vector input');
    end
end
    
% Check for ambiguity in property name
if isprop(obj.hgcontainer, property) &&...
        isprop(obj.hgcontrol, property)
    if strcmp(property,'visible')
        % Visible is an exception -  take this from the container, MATLAB
        % links this property for the container and object
        s=obj.hgcontainer.Visible;
        return
    else
    error('Shared property name ''%s''\nYou must explicitly specify the target object',...
        property);
    end
end

% Do the work
switch property
    case 'hghandle'
        s=obj.hghandle;
    case 'hgcontainer'
        s=obj.hgcontainer;
    case 'hgcontrol'
        s=obj.hgcontrol;
    otherwise
        if isprop(obj.hgcontainer, property)
            % container property
            s=obj.hgcontainer.(property);
        elseif isprop(obj.hgcontrol, property)
            % control property
            s=obj.hgcontrol.(property);
        elseif isempty(obj.hghandle)
            % Empty -default object
            s=[];
        else
            % Error
            error('No such property');
        end
end

end