clear;
% Análise da segunda derivada de f''(x) para determinar um K estável
% X = 0:pi/100:2*pi;
% Y = f(X);
% dY = gradient(Y(:))./gradient(X(:));
% dYY = gradient(dY(:))./gradient(X(:));
% plot(X, dYY);
K = 0.9;
a = 0;
maxerror = 0.001;
xs = sym([]);
for i = 1 : 11
    xs(i) = (i-1) * (pi/5);
end

format long;
results = [];
nTrapezios = [];
erros = [];
Ns = [];
for b = double(xs)
        deltaX = b - a;
        n = ceil((sqrt((K * (deltaX^3))/(12*maxerror))));
        x = a:deltaX/n:b;
        x = x(:);
        y = f(x);
        y = y(:);
        result = (ones(1,n) .* (deltaX/n)) * (y(1:end-1, :) + y(2:end, :))/2;
        results = [results result];
        erroAbsolutoMenorQue = (K * (deltaX^3))/(12*(n^2));
        erros = [erros erroAbsolutoMenorQue];
        Ns = [Ns n];
end
Answer = array2table ([double(results); erros ;Ns], 'VariableNames', string(xs), ...
    'RowNames', {'g(x)', 'Erro Absoluto Menor Que', 'nº de trapézios'})
function y = f(x)
    y = atan(sin(x));
end