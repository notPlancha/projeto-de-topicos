clear;
K = 0.9;
maxerror = 0.001;
xs = sym([]);
for i = 1 : 11
    xs(i) = (i-1) * (pi/5);
end

format long;
t1 = A(xs, maxerror);
t2 = B(xs, maxerror);
t3 = C(xs);
T = [t1 ; t2 ; t3]