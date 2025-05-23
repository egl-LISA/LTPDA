%STRJOIN Concatenate an array into a single string.
%
%     S = utils.prog.strjoin(C)
%     S = utils.prog.strjoin(C, separator)
%
% Description
%
% S = utils.prog.strjoin(C) takes an array C and returns a string S which
% concatenates array elements with comma. C can be a cell array of
% strings, a character array, a numeric array, or a logical array. If C
% is a matrix, it is first flattened to get an array and concateneted.
% S = utils.prog.strjoin(C, separator) also specifies separator for
% string concatenation.
% The default separator is comma.
%
% Examples
%
%     >> str = utils.prog.strjoin({'this','is','a','cell','array'})
%     str =
%     this,is,a,cell,array
%
%     >> str = utils.prog.strjoin([1,2,2],'_')
%     str =
%     1_2_2
%
%     >> str = utils.prog.strjoin({1,2,2,'string'},'\t')
%     str =
%     1 2 2 string
%
function output = strjoin(input, separator)
  
  if nargin < 2, separator = ','; end
  assert(ischar(separator), 'Invalid separator input: %s', class(separator));
  separator = strrep(separator, '%', '%%');
  
  output = '';
  if ~isempty(input)
    if ischar(input)
      input = cellstr(input);
    end
    if isnumeric(input) || islogical(input)
      output = [repmat(sprintf(['%.15g', separator], input(1:end-1)), ...
        1, ~isscalar(input)), ...
        sprintf('%.15g', input(end))];
    elseif iscellstr(input)
      output = [repmat(sprintf(['%s', separator], input{1:end-1}), ...
        1, ~isscalar(input)), ...
        sprintf('%s', input{end})];
    elseif iscell(input)
      output = utils.prog.strjoin(cellfun(@(x)utils.prog.strjoin(x, separator), input, 'UniformOutput', false), separator);
    else
      error('strjoin:invalidInput', 'Unsupported input: %s', class(input));
    end
  end
end

