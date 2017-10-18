% CHRISTINE SHUE
% LAB 2: Write a script that computes the approximation of pi.
% JULY 7, 2017
%
insideC = 0;
for total = 1:10^8
    x=rand;
    y=rand;
    if x*x+y*y <= 1
        insideC = insideC + 1;
    end
end
fprintf('pi = %10.2f \n\n', ceil(4*insideC/total));