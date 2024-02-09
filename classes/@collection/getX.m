% GETX Get the selected data objects property 'x' for the input collection object.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% DESCRIPTION: Get the selected data objects property 'x' for the input collection object.
%
% CALL:        x = getX(c1, 'acx')
%              x = getX(c, {'fee_x1','fee_x2'})
%              x = getX(c, fields)
%              x = c.getX('fee_x2')
%
% INPUTS:      c       - input collection object
%              fields  - desired field name (string or cell array of strings)
%
% OUTPUTS:     x  - matrix with 'x', one column for each input field
%
% <a href="matlab:utils.helper.displayMethodInfo('collection', 'getX')">Parameters Description</a>
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = getX(varargin)
  
  % Check if this is a call for parameters
  if utils.helper.isinfocall(varargin{:})
    varargout{1} = getInfo(varargin{3});
    return
  end
  
  methodName = 'x';
  
  % Assume the input is a single collection object
  obj = varargin{1};
  
  % Assume the field name is a cell array with arguments
  field_names = varargin{2};
  switch class(field_names)
    case 'char'
      field_names = {field_names};
    case 'cell'
    otherwise
      error('### The field name should be specified in a string or in a cell array of strings');
  end
  
  % Prepare a structure to use with the subsref function syntax
  s = struct();
  s.type = '.';
  
  % Loop over the field names, i.e. over the objects
  out = [];
  for jj = 1:numel(field_names)
    % These are the key points (2 Matlab features/bugs in subsref):
    % 1) we need to store the object pointed by the field
    % 2) We need to use subsref in the function syntax
    field_name = field_names{jj};
    if any(strcmp(obj.names, field_name))
      s.subs = field_name;
      o = subsref(obj, s);
      
      % Now we can go ahead and call the method
      if ismethod(o, methodName)
        d = feval(methodName, o);
      else
        d = [];
        warning('The object [''%s''] does not have a %s method!', field_name, methodName);
      end
      out = [out d];
    else
      warning('The object does not have a [''%s''] field!', field_name);
    end
  end
  
  % Assign output
  varargout = {out};
  
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
  ii = minfo(mfilename, 'collection', 'UTN_module', utils.const.categories.helper, '', sets, pl);
  ii.setModifier(false);
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
  pl = plist.EMPTY_PLIST;
end
