% CHRISTINE SHUE
% DUE: AUGUST 3, 2017
% HW 19: Solving linear systems of equations
% /u/erdos/students/cshue1/cisc4750/week5/hw19.m
format rat
A1 = vander(0:5);
b1 = (0:5)';
b1 = b1.^4 + b1.^2 + 1;
for i = 2:6
    b1(i) = b1(i) + b1(i-1);
end
p1 = (linsolve(A1,b1))'
