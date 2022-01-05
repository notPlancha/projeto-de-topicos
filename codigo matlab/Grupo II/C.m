function ret = C(xs)
    %se g(x) = 0§xf(t)dt, ent g'(x) = f(x) em [0, x]
    fxs = f(xs);
    dgdxExato = fxs;
    syms x
    dfdx = diff(f(x));
    dg2dx2Exato = double(subs(dfdx, x, xs));
    ret = [dgdxExato; dg2dx2Exato];
end