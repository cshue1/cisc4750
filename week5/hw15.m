% CHRISTINE SHUE
% DUE: AUGUST 3, 2017
% HW 15: Danielle's HW
% Problem 1: find the two solutions of log(1+x)-x^2
% Problem 2: find the smallest root of f(x) = exp(x) - 5x^2
% /u/erdos/students/cshue1/cisc4750/week5/hw15.m
%
fprintf('Problem 1\n');
f=@(x) (log(1+x)-x.^2);
subplot(2,1,1);
fprintf('\tRoot 1:\n');
bisec_g(f,-0.02,0.02,-0.06,0.06,10)
subplot(2,1,2);
fprintf('\tRoot 2:\n');
bisec_g(f,0.5,1,0.47,1.04,10)
% subplot(3,1,3);
f2 = @(x) (exp(x) - 5.*x.^2);
% x = linspace(-1,1,100);
% y = exp(x)-5.*x.^2;
% plot(x,y)
% grid on
fprintf('\n\nProblem 2\n');
fprintf('\tSmallest positive root: \n');
Newt_n(f2,0.6);