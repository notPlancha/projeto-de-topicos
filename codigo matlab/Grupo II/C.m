function ret = C(xs)
%wrong, g(x) not f(x)
    syms x
    df = diff(f(x));
    diffs = vpa(subs(df, x, xs));
    df2 = diff(f(x), 2);
    diffs2 = vpa(subs(df2, x, xs));
    ret = array2table([double(diffs); double(diffs2)], 'VariableNames',string(xs), ...
        'RowNames', {'dg/dx exato' ,'d^2g/dx^2 exato'});
end