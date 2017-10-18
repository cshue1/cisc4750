%
% CHRISTINE SHUE
% DUE: JULY 13, 2017
% HW3: This script solves for a number of unknown variables with the same
% number of linear equations.
% /u/erdos/students/cshue1/cisc4750/week2/hw3.m
%
clear;
sum=0;
bi = [29 26 25 22];
n = size(bi,2);
for i=1:n
    sum = sum + bi(i);
end
for i=1:n
    A(i) = (sum/(n-1)) - bi(i);
end
A