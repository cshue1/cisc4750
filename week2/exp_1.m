function y = exp_1(x,n)
% The command exp_1(x,n) computes the nth order Taylor approximation of e^x.
% filename: exp_1.m
% x is a scalar
% n is a scalar
%
if n < 0
    error ('second argument must be a natural number.')
else
    fact = 1;
    Tn = fact;
    for i = 1:n
        fact = fact*x/i;
        Tn = Tn + fact;
    end
    y = Tn;
end
