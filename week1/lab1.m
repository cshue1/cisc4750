% CHRISTINE SHUE
% Lab 1: Write a simple script that has a for loop to generate 10 random
% numbers between 0 and 1.
% JULY 6, 2017
%

c = clock;
i = c(2)*c(3)*c(4)*c(5)*c(6);
rand('seed', i);
for i=1:10
    %fprintf('%10.4f \n',rand(1))
    %fprintf('%10.4f \n', 3*rand+2)
end
