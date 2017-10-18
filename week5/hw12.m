% CHRISTINE SHUE
% DUE: AUGUST 1, 2017
% HW 12: Compare the accuracy of Simpson's Rule and the Trapezoidal Rule.
% /u/erdos/students/cshue1/cisc4750/week5/hw12.m
%
f =@(x) (x+1).^(-1);
a = 2;
b = 3;
n = 4;

i_t  = trapez_n(f,a,b,n);
i_s  = simps_n(f,a,b,n);
i = integral(f,a,b);
e_t = i_t-i;
e_s = i_s-i;
fprintf('\t\t    Approx.\tError\n');
fprintf('Trapezoidal Rule ');
fprintf('%10f %10f\n',i_t,e_t);
fprintf('Simpson''s Rule   ');
fprintf('%10f %10f\n',i_s,e_s);