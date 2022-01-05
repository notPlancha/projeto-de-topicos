T = table([1.1; 2],[3.45; 1.2], 'VariableNames', {'a', 'b'}, 'RowNames', {'c', 'd'});
% set desired precision in terms of the number of decimal places
n_decimal = 2;
% create a new table
new_T = varfun(@(x) num2str(x, ['%' sprintf('.%df', n_decimal)]), T);
% preserve the variable names and the row names in the original table
new_T.Properties.VariableNames = T.Properties.VariableNames;
new_T.Properties.RowNames = T.Properties.RowNames;
% display the original table
fprintf('Original table:\n')
T
% display the new table, which has the desired decimal places
fprintf('New table with %d decimal places:\n', n_decimal);
new_T
%create data and convert numbers to strings
data = [1.1 3.45; 2 1.2];
data_str = string(data);
%round to 2 decimal places
for i = 1:numel(data_str)
data_str(i) = sprintf('%.2f',data_str(i));
end
%add formatted strings to table
t = array2table(data_str,'VariableNames',{'a','b'},'RowNames',{'c','d'})