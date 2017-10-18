% CHRISTINE SHUE 
% DUE: JULY 24, 2017
% HW6: This script performs the strassens function to multiply two square
% arrays of the same dimension
% /u/erdos/students/cshue1/cisc4750/week4/hw6.m
%
A = ceil(10*rand(8,8));
B = ceil(10*rand(8,8));
C = strassens(A,B)
D = A*B
isequal(C,D)