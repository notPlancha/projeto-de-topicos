function ret = B(xs, gxs)
    hs = diff(double(xs));
    ret = ones(size(xs));
    ret(1) = (gxs(2) - gxs(1) ) / hs(1);
    ret(end) = (gxs(end) - gxs(end-1)) / hs(end);
    ret(2:end-1) = (gxs(3:end) - gxs(1:end-2) )./(2*hs(2:end));
end