

function output_txt = datacursormode(~, event_obj)
% Display the position of the data cursor
% obj          Currently not used (empty)
% event_obj    Handle to event object
% output_txt   Data cursor text string (string or cell array of strings).

t0 = get(get(get(event_obj, 'Target'), 'Parent'), 'UserData');

pos = get(event_obj,'Position');

output_txt = {['Time: ',char(t0 + pos(1))], ...
  ['X: ', sprintf('%-12.2f', pos(1))], ...
  ['Y: ', sprintf('%-12.6e', pos(2))]};

% If there is a Z-coordinate in the position, display it as well
if length(pos) > 2
    output_txt{end+1} = ['Z: ',num2str(pos(3),4)];
end

