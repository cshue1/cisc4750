function y = exp_2(x)
% The command exp_2(x) computes the nth order Taylor approximation of e^x.
% filename: exp_1.m
% x is a scalar
%
term = 1;
sum = term;
k = 1;
new_sum = term;
old_sum = 0;
while (new_sum - old_sum ~= 0)
    old_sum = new_sum;
    term = term*x/k;
    new_sum = new_sum + term;
    k = k+1;
end
y = new_sum;