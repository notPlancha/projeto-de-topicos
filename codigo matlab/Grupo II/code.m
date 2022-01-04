clear;
K = 0.9; %análise do gráfico de f''(x)
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
Ns = []
for b = double(xs)
    deltaX = b - a;
    syms n
    n = sqrt((K * (deltaX^3))/(12*maxerror)) + 1;%+1 pq eu quero o int pra cima
    deltaMid = deltaX /n;
    sumFs = f(a) + f(b);
    for i = 1:n-1 %-1 pq f(b) é o último
        sumFs = sumFs + 2*f(a + (deltaMid*i));
    end
    result = (1/2) * deltaMid * sumFs;
    results = [results result];
    erroAbsolutoMenorQue = (K * (deltaX^3))/(12*(n^2));
    erros = [erros erroAbsolutoMenorQue];
    Ns = [Ns n];
end
                                                %ceil pra contar x0
Answer = array2table ([double(results); erros ;ceil(Ns)], 'VariableNames', string(xs), ...
    'RowNames', {'g(x)', 'Erro Absoluto Menor Que', 'nº de trapézios'})
function y = f(x)
    y = atan(sin(x));
end