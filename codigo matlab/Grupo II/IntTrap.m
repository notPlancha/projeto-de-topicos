function s = IntTrap (f, a, b, n)
    dx = (b-a)./n;  
    x = (a+dx):dx:(b-dx);
    s = dx .* (sum(f(x)) + ((f(a) + f(b)) ./2) );
end