A = [0.6 0.5;-0.24 1.4];
x0 = [500;300];
%PART 2: Show the effect of the population sizes in the long run.
% finding asymptotes
[V,L] = eig(A);
L1 = L(1,1);
L2 = L(2,2);
u = V(:,1);
v = V(:,2);
su = u(2)/u(1);
sv = v(2)/v(1);
% population at year k
k_s = zeros(1,8);
k_c = zeros(1,8);
k = 0;
if (u > v)
    max = u;
else
    max = v;
end
while k < max
    xk = (A^k)*x0;
    k_s(:,k+1) = xk(1,1);
    k_c(:,k+1) = xk(2,1);
    k = k + 1;
end
% visualizing results
x = linspace(0,700,8);
y1 = su*x; y2 = sv*x;
plot(x,y1,'r :',x,y2,'r :',k_s,k_c,'b o')
axis([0 700 0 700])