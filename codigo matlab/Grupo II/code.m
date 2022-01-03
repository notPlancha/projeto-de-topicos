clear;
format long;
nTrapezios = 10;%temp
a = 0;
syms x g(x)
deriv2 = diff(diff(f(x)));
xs = sym([]);
for i = 1 : 11
    xs(i) = (i-1) * (pi/5);
end
results = [];
for b = double(xs)
    deltaX = b - a;
    deltaMid = deltaX /nTrapezios;
    sumFs = f(a) + f(b);
    for i = 1:nTrapezios-1
        sumFs = sumFs + 2*f(a + (deltaMid*i));
    end
    result = (1/2) * deltaMid * sumFs;
    results = [results result];
end

Answer = array2table (double(results), 'VariableNames', string(xs))
function y = f(x)
    y = atan(sin(x));
end