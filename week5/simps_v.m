function I = simps_v(f,h)
% I = simps_v(f,h)
% filename: simps_v.m
% simps_v computes the approximation of an integral using Simpson's Rule.
    n = length(f)-1;
    if n == 1
        I = h/3*(f(1)+4*f(2)+f(3));
        return;
    end
    if n == 3
        I = 3/8*(f(1)+3*f(2)+3*f(3)+f(4));
        return;
    end
    I = 0;
    if 2*floor(n/2) ~= n
        I = 3/8*h*(f(n-2)+3*f(n-1)+3*f(n)+f(n+1));
        m = n-3;
    else
        m=n;
    end
    I = I + (h/3)*(f(1)+4*sum(f(2:2:m))+f(m+1));
    if m>2
        I = I+(h/3)*2*sum(f(3:2:m));
    end
    
end