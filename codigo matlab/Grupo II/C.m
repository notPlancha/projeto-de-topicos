function ret = C(xs)
%wrong, g(x) not f(x)
    syms x
    df = diff(f(x));
    diffs = vpa(subs(df, x, xs));
    df2 = diff(f(x), 2);
    diffs2 = vpa(subs(df2, x, xs));
    ret = [double(diffs); double(diffs2)];
end