function varargout=set(varargin)
% SET method overloaded for JCONTROL class
%
% Examples:
% set(obj,PropertyName, PropertyValue)
% set(obj, PropertyName1, Value1, PropertyName2, Value2....)
%
% The propertyname/valuename sequence can have an embedded cell array if
% that contains property/value pairs e.g
%           standardvalues={'Units', 'normalized'}
%           set(myobj, 'javax.swing.JPane',...
%                      'ToolTipText','MyTip',...
%                       standardvalues);
%s
% Also:
% set(obj, s)
% set(obj, pn, pm)
% where s in a structure with fieldnames corresponding to property names
% and values corresponding to property values
% pn and pm and name/value cell vectors (note pm may not be a matrix)
%
% If obj is a vector of JCONTROLs, SET will act on each element.
% In this case, the specified properties must be present in all the 
% JCONTROLs or an error will result
% 
% 
% See also: jcontrol
%
% -------------------------------------------------------------------------
% Author: Malcolm Lidierth 07/07
% Copyright � The Author & King's College London 2007
% -------------------------------------------------------------------------

% Note: The usual assignin(...) call is not needed here because both the
% hgcontainer and the hgcontrol are passed by reference rather than by
% value. Changes here affect the original JCONTROL contents, and all copies
% of them in all MATLAB workspaces.

obj=varargin{1};

if nargin==1
    % Return setable properties
    s=set(obj.hgcontainer);
    s.hgcontrol=set(obj.hgcontrol);
    varargout{1}=s;
    return
end

% Otherwise make sure we have enough inputs
if nargin==2 && isstruct(varargin{2})
    % Property/value pairs in structure
    % Get the names
    propnames=fieldnames(varargin{2});
    % get the values
    propvalues=cell(length(propnames),1);
    for i=1:length(propnames)
        propvalues{i}=varargin{2}.(propnames{i});
    end
    % Recursive call to set
    set(varargin{1}, propnames, propvalues);
    return
elseif nargin==3 && iscell(varargin{2}) && iscell(varargin{3})
    % set(obj, pn, pm) where pn and pm are property and value cell vectors
    if numel(varargin{2})~=numel(varargin{3})
        error('Multiple values for each property not supported'); %#ok<ERTAG>
    end
    proplist=cell(1,2*length(varargin{2}));
    count=1;
    for i=1:length(varargin{2})
        proplist(count)=varargin{2}(i);
        proplist(count+1)=varargin{3}(i);
        count=count+2;
    end
else
    % Allow cell arrays in the property/values pairs list
    % Expand these where present
    pcount=1;
    vcount=2;
    proplist={};
    for i=1:(length(varargin)-1)/2
        if ischar(varargin{vcount})
            % Property/Value pair
            proplist{pcount}=varargin{vcount};
            proplist{pcount+1}=varargin{vcount+1};
            pcount=pcount+2;
            vcount=vcount+2;
        elseif iscell(varargin{vcount})
            % Cell array
            proplist=[proplist varargin{vcount}]; %#ok<AGROW>
            pcount=length(proplist)+1;
            vcount=vcount+1;
        end
    end
end
            
% For loop allows vector (or matrix) of JCONTROLs on input but all elements
% must have all the target properties or an error will be generated
for idx=1:numel(obj)
    switch lower(proplist{1})
        case {'hgcontainer', 'hgcontrol' 'hghandle' 'Parent' 'Children'}
            error('The %s property of a jcontrol object can not be changed', lower(varargin{2}));
        otherwise
            for i=1:2:length(proplist)
                property=proplist{i};
                value=proplist{i+1};
                if isprop(obj(idx).hgcontainer, property) &&...
                        isprop(obj(idx).hgcontrol, property)
                    if strcmpi(property,'Visible')
                        % Set Visible property in the container, MATLAB will
                        % update the hgcontrol
                        obj(idx).hgcontainer.Visible=VisibleProperty(value);
                        continue
                    else
                        error('Shared property name ''%s''\nYou must explicitly specify the target object',...
                        proplist{i});
                    end
                end
                if isprop(obj(idx).hgcontainer, property)
                    obj(idx).hgcontainer.(property)=value;
                elseif isprop(obj(idx).hgcontrol, property)
                    obj(idx).hgcontrol.(property)=value;
                else
                    error('No such property: ''%s'' in %s(%d)', property, inputname(1), idx);
                end
            end
    end
end
return
end