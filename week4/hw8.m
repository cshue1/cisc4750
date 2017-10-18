% CHRISTINE SHUE
% DUE: JULY 27, 2017
% APRIL's HW: Predator-Prey Populations
% /u/erdos/students/cshue1/cisc4750/week4/hw7.m
%

% PART 1: Find initial seal and cod populations
A = [0.7 0.5;-0.24 1.4];
x5 = [1;1.0275];
x0 = (A^5\x5)

%PART 2: Show the effect of the population sizes in the long run.
% population at year k

new_ratio = x0(1)/x0(2);
old_ratio = 0;
x = x0;
while(new_ratio ~= old_ratio)
    old_ratio = new_ratio;
    x = A*x;
    new_ratio = x(1)/x(2);
end
fprintf('ratio of seal to cod: %8.4f \n', new_ratio)
fprintf('ratio of cod to seal: %8.4f \n', 1/new_ratio)

% 1.25 seal to cod ratio
% 0.8 cod to seal ratio