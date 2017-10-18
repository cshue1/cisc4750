function I = trapez_v(f,h)
% I = trapez_v(f,h)
% filename: trapez_v.m
% trapez_v computes the approximation of an integral using the Trapeziodal Rule.
    I = h*(sum(f)-(f(1) + f(length(f)))/2);
end