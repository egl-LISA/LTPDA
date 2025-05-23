function obj=jcontrol(Parent, Style, varargin)
% JCONTROL constructor for JCONTROL class
%
% JCONTROL provides an easy way to integrate a full range of java GUIs
% from the java.awt and javax.swing libraries into MATLAB.
%
% Example:
% obj=JCONTROL(Parent, Style);
% obj=JCONTROL(Parent, Style, PropertyName1, PropertyValue1,...
%                     PropertyName2, ProeprtyValue2....);
% Inputs:
% Parent: the handle of a Matlab figure or other container for the resulting
%         component
% Style: string describing a java component e.g. 'javax.swing.JPanel',
%         'javax.swing.JButton' or a variable containing a java object
% PropertName/PropertyValue pairs: these are automatically assigned to the
%         HG container or the java component as appropriate.
%
% Pre-create the java object if you need to pass arguments to the
% constructor e.g.
% javaobj=javax.swing...(...............);
% obj=jcontrol(Parent, javaobj)
%
% By default, JCONTROLs are returned with Units set to 'normalized'.
%
% USE:
% Build a GUI with repeated calls to JCONTROL in much the same way as with
% MATLAB's uicontrol function e.g.:
%               h=jcontrol(gcf,'javax.swing.JPanel',...
%                            'Position',[100 100 200 150],...
%                            'Units','normalized')
%               h(2)=jcontrol(h(1),'javax.swing.JComboBox',...
%                            'Position',[0.1 0.8 0.8 0.1]);
%               h(2).addItem('Item1');
%               h(2).addItem('Item2');
%               h(3)=jcontrol(h(1),'javax.swing.JCheckBox',...
%                             'Position',[0.1 0.1 0.1 0.1],...
%                             'Label','My check box');
% See the jcontrolDemo() for a fuller example.
%
% A JCONTROL aggregates the MATLAB handle graphics container and the Java
% component (as returned by MATLAB's JAVACOMPONENT function) into a single
% object.
% Access to the JCONTROL's properties is provided by GET/SET calls. 
% These automatically determine whether the target property is in
% the HG container or java object.
%               myobject=jcontrol(gcf,'javax.swing.JPanel',...
%                       'Units', 'normalized',...
%                       'Name', 'MyPanel');
%               set(myobject, 'Position', [0.4 0.4 0.4 0.2],...
%                       'Enabled', 0);
%               pos=get(myobject,'Units');
% Note that you can mix HG container properties (e.g. Units, Position) and
% java component properties (e.g. Name, Enabled) in single calls to
% JCONTROL and SET.
% Use the HG container to control the Units, Position, and Visible
% properties
% 
% MATLAB dot notation may also be used. This notation also provides access
% to the java object's methods
%               pos=myobject.Position;
%               sz=myObject.getSize;
%               myobject.setEnabled(1);
%               myobject.setToolTipText('My tip');
%               myobject.setOpaque(1);
%
%--------------------------------------------------------------------------
% UNITS, POSITION and VISIBLE properties
% Set these by accessing the JCONTROL or its container (not the hgcontrol).
% MATLAB links these properties between the container and the java control,
% but unidirectionally. 
% Note that JCONTROL methods always act on/return the Visible property of 
% the container ('on' or 'off') which will also update the java control. 
% Do not use the setVisible() methods.
%--------------------------------------------------------------------------
%
% Overloaded class methods are case-insensitive for properties but
% case-sensitive for java methods
%
% CALLBACKS
% Setting up callbacks
% The simplest way to set up a callback is through the SET method
%      myPanel=jcontrol(gcf,'javax.swing.JPanel',...
%                   'Units','normalized',...
%                   'Position',[0.3 0.3 0.5 0.5]);
%      set(myPanel, 'MouseClickedCallback', 'MyCallback')
%      or
%      set(myPanel, 'MouseClickedCallback', @MyCallback);
%      or
%      set(myPanel ,'MouseClickedCallback', {@MyCallback A B C...});
%
% The callback then takes the usual MATLAB form, e.g.
%      function MyCallback(hObject, EventData)
%      function MyCallback(hObject, EventData, varargin)
%
% Accessing JCONTROL objects in callbacks:
% The handle received by a callback will be that of the java control
% object contained in the JCONTROL, not the JCONTROL itself. In addition,
% GCO will return empty and GCBO will not return the parent figure handle.
% However, the JCONTROL constructor adds the HG container handle to the
% java component's properties. This can be used to access the container and
% its parent figure from within the callback e.g.
%        get(hObject.hghandle);% gets the HG container
%        ancestor(hObject.hghandle,'figure')% gets the parent figure handle
% To cross-reference from the container, JCONTROL places a  reference to 
% the java control in the container's UserData area e.g.
%       hgc=findobj('Tag','MyCustomTag')
%       javacontrol=get(hgc, 'UserData');
%
% Accessing data in callbacks
% Data can be passed to a callback, as above, with optional input
% arguments. In addition, data that is specific to the control can be stored
% in the application data area of the control e.g. to return values
% dependent on the selection of a popup menu
%           data=getappdata(hObject,'data');
%           returnvalues=data(hObject.getSelectedItem+1);
% Note: +1 because the item numbering is zero based for the java object.
% The HG container has a separate application data area.
%
% R2006a or higher only:
% GETAPPDATA, SETAPPDATA ISAPPDATA and RMAPPDATA methods have been
% overloaded for JCONTROL objects. These place/return data from the
% application data area of the java control. Take care if removing the whole
% application data area - TMW may place data in there too. The HG container
% has a separate application data area.
%
% Notes:
% If a property name occurs in both the HG container and the java object,
% the JCONTROL methods can not unambiguously identify the source/target
% and it must be defined explicitly by the user e.g.
%                get(myobject.hgcontainer,'Opaque');
%                set(myobject.hgcontrol, 'Opaque',0);
% The JCONTROL methods test for ambiguity and issue an error message when
% it arises. Note that the test uses MATLAB's isprop and is case 
% insensitive.
% It may also detect properties not listed by the MATLAB builtin GET 
% function for the hgcontrol such as Visible. The JCONTROL methods always
% act on the Visible property of the hgcontainer, letting MATLAB update the
% object automatically (see above).
%
% The DeleteFcn property of the hgcontainer is set by the JAVACOMPONENT 
% function. If this property is changed, the new callback must explicitly
% delete the hgcontrol.
%
% See also:
%   jcontrol/get, jcontrol/set, jcontrol/subsasgn, jcontrol/subsref
%   jcontrol/setappdata, jcontrol/getappdata, jcontrol/isappdata
%   jcontrol/rmappdata, jcontrol/delete
%   javacomponent, gco, gcbo
% 
%--------------------------------------------------------------------------
% Acknowledgements: The JCONTROL class was partly inspired by Yair Altman's 
% <a href="http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=14583&objectType=file">uicomponent</a> function.
% The functions take different routes to achieve similar ends. JCONTROL is rather
% faster - which is significant when building complex GUIs, but UICOMPONENT
% accepts the same calling conventions as MATLAB's UICONTROL while JCONTROL
% does not.
%--------------------------------------------------------------------------
%
% -------------------------------------------------------------------------
% Author: Malcolm Lidierth 07/07
% Copyright � The Author & King's College London 2007-
% -------------------------------------------------------------------------
%
% Revisions:
%   12.09.07 Allow pre-contructed java objects on input

if nargin==0
    % Default constructor
    obj.hgcontrol=[];
    obj.hghandle=[];
    obj.hgcontainer=[];
    obj=class(orderfields(obj),'jcontrol');
    return
end


% Check parent
if ishandle(Parent) && Parent==0
    % Root given as Parent-create a new figure
    container=figure('MenuBar','none');
elseif strcmp(class(Parent),'jcontrol');
    % Parent is a jcontrol - use the hgcontainer
    container=Parent.hgcontainer;
else
    % Use as specified
    container=Parent;
end

% Check the Parent is a valid handle
if ishandle(container)==0
    error('Parent is not a valid handle (has the parent figure been closed?)');
end

% Java object
if ischar(Style)
    % Create a default object
    javaobject=javaObject(Style);
elseif isjava(Style)
    % or use supplied object
    javaobject=Style;
end

% Check we have a valid Style
if isa(javaobject,'java.awt.Window')
    error('%s is a top-level container: \n%s\n',...
        Style, 'it can not have a MATLAB figure as parent/ancestor');
end

% If so, add callbacks and place in container
[obj.hgcontrol containerHandle]=javacomponent(javaobject,[],container);
% Put a copy of the container handle in obj....
obj.hghandle=containerHandle;
% ... and in the control
s=schema.prop(obj.hgcontrol ,'hghandle','mxArray');
obj.hgcontrol.hghandle=containerHandle;
s.AccessFlags.PublicSet='off';

% Put the container in obj
obj.hgcontainer = handle(containerHandle);

% Construct the instance
obj=class(orderfields(obj),'jcontrol');

% Put a reference to the hgcontrol in the UserData area of the handle
set(containerHandle, 'UserData', obj.hgcontrol);

% Set the properties and return
% Default to normalized
set(obj, 'Units','normalized');
% Set values as requested
if ~isempty(varargin)
    set(obj,varargin{:});
    return
end
