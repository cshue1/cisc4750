function I = simps_n(f_name,a,b,n)
% I = simps_n(f_name,a,b,n)
% filename: trapez_n.m
% trapez_v computes the approximation of an integral using Simpson's Rule.
    h = (b-a)/n;
    x = a+(0:n)*h;
    f = feval(f_name,x);
    I = simps_v(f,h);
end
