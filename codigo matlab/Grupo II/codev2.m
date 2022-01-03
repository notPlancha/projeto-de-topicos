clear;
maxError = 0.01;
format long;
nTrapezios = 10;%temp
a = 0;
b = pi/5;
syms x g(x)
deriv2 = abs(diff(diff(f(x))));