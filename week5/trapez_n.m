function I = trapez_n(f_name,a,b,n)
% I = trapez_n(f_name,a,b,n)
% filename: trapez_n.m
% trapez_n computes the approximation of an integral using the Trapezoidal Rule.
    h = (b-a)/n;
    x = a+(0:n)*h;
    f = feval(f_name,x);
    I = trapez_v(f,h);
end