%
% CHRISTINE SHUE
% DUE: JULY 12, 2017
% HW2: Matrix Creation: Part 1 concatenates three smaller matrices to
% create one big matrix.  Part 2 creates a diagonal of ones in a 4x4
% matrix, rotated 90 degrees counterclockwise.
% /u/erdos/students/cshue1/cisc4750/week2/hw2.m
%

%PART 1
a = diag(ones(1,3));
b = (reshape((1:1:6),2,3))';
c(5) = 7;
d = [a b];
d(4,:) = c

%PART 2
e = rot90(diag(ones(1,4)))