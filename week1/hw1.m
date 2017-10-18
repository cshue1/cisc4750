% CHRISTINE SHUE
% DUE: JULY 10, 2017
% HW1: Design a function for the formula humps(x) and produce its graph
% /u/erdos/students/cshue1/cisc4750/hw1.m
%
x = linspace (-0.5,2,200);
y = humps(x);
plot(x,y)
grid on
title('HW1: Humps Function')
xlabel('x')
ylabel('y')