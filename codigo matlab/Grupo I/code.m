clear;
%  Análise da segunda derivada de f''(x) para determinar um K estável
%  X = 0:pi/100:1;
%  Y = f(X);
%  dY = gradient(Y(:))./gradient(X(:));
%  dYY = gradient(dY(:))./gradient(X(:));
%  plot(X, dYY);
K= 0.6;
b = 1;
a = 0;
maxerror = 0.001;

n = ceil((sqrt((K * ((b - a)^3))/(24*maxerror))));
deltaX = (b - a)/n;
x = a+(deltaX/2):deltaX:b-(deltaX/2);
x = x(:);
y = f(x);
y = y(:);
result = (ones(1,n) .* deltaX) * y
erroAbsolutoMenorQue = (K * (deltaX^3))/(24*(n^2))
NDeRetangulos = n
function y = f(x)
    e = exp(1);
    y = e.^(-(x.^2));
end