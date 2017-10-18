% CHRISTINE SHUE
% DUE: JULY 31, 2017
% HW10: Use vander to find the coefficients of the 7th order polynomial.
% /u/erdos/students/cshue1/cisc4750/week4/hs10.m
%

x = [2;5;8;11;14;19;22;28];
A = vander(x)
b = [1;2;7;15;9;7;4;1];
p = (A\b)'

x1 = linspace(1,30,200);
y = polyval(p,x1);
plot(x1,y)