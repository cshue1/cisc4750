function y = powwer(x,n)
% the command powwer(x,n) computes raises a number x to the nth power.
% filename: powwer.m
% x is a scalar
% n is a scalar
%
    if n < 0
        fprintf('    Error in function power. \n')
        fprintf('    Second argument must be a natural number.\n')
    else
        powwer = 1;
        if n > 0
            for k = 1:n
               powwer = powwer * x;
            end
        end
        y = powwer;
    end
    keyboard;
    end
    