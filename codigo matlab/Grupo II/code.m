clear;
K = 0.9;
maxerror = 0.001;
h = 0.00000000000000000001;
xs = sym([]);
for i = 1 : 11
    xs(i) = (i-1) * (pi/5);
end
strXs = string(xs);
xs = double(xs);
format long;
t1 = A(xs, maxerror); 
t2 = B(xs, t1(1, :));
t3 = B(t1(1, :), t2(1, :));
t4 = C(xs);
T = array2table( ...
    [t1 ; t2 ; t4(1, :); t3; t4(2, :)], 'VariableNames', strXs,'RowNames',{ ...
        'g(x)', 
        'Erro Absoluto Menor Que', 
        'nº de trapézios',
        'dg/dx calculado' ,
        'dg/dx exato',
        'd^2g/dx^2 calculado' ,
        'd^2g/dx^2 exato'
        });

uitable('Data',T{:,:},'ColumnName',T.Properties.VariableNames,...
     'RowName',T.Properties.RowNames,'Units', 'Normalized', 'Position',[0, 0, 1, 1]);