function ret = C(xs)
    fxs = f(xs);
    dgdxExato = fxs;
    syms x
    dfdx = diff(f(x));
    dg2dx2Exato = double(subs(dfdx, x, xs));
    ret = [dgdxExato; dg2dx2Exato];
end