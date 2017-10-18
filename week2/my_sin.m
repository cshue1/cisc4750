function y = my_sin(x)
% The function my_sin(x) computes the approximation of the sin of x.
% filename: my_sin.m
% x is a scalar
% CHRISTINE SHUE
%DUE: JULY 17, 2017


term = x;
new_sum = term;
old_sum = 0;
k = 3;
while (new_sum - old_sum ~= 0)
    old_sum = new_sum;
    term = term*((-1)*x^2)/(k*(k-1));
    new_sum = new_sum + term;
    k = k+2;
end
y = new_sum;
end
