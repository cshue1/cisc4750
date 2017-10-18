% CHRISTINE SHUE
% DUE: AUGUST 3, 2017
% HW 16: Solve the system of nonlinear equations using the zoom-in method
% Equation 1: y = (1/x)
% Equation 2: y = e^(2x)-1
% /u/erdos/students/cshue1/cisc4750/week5/hw16.m

x = linspace(-10,10,200);
y = 1./x;
z = exp(2.*x)-1;
plot(x,y,x,z)
grid on
axis ([-10 10 -10 10])

% INTERSECTION 1
x1 = -1.12146;
x2 = -1.121455;
y1 = 1/x1;
y2 = 1/x2;
z1 = exp(2*x1)-1;
z2 = exp(2*x2)-1;
m1 = (y2-y1)/(x2-x1);
m2 = (z2-z1)/(x2-x1);
r = (x1*(m1-m2)+z1-y1)/(m1-m2);
i(1,1) = 1/r;
i(2,1) = exp(2*r)-1;

% INTERSECTION 2
x1 = 0.5304;
x2 = 0.53045;
y1 = 1/x1;
y2 = 1/x2;
z1 = exp(2*x1)-1;
z2 = exp(2*x2)-1;
m1 = (y2-y1)/(x2-x1);
m2 = (z2-z1)/(x2-x1);
r = (x1*(m1-m2)+z1-y1)/(m1-m2);
i(1,2) = 1/r;
i(2,2) = exp(2*r)-1;
fprintf('CHRISTINE SHUE\n');
fprintf('DUE: AUGUST 3, 2017\n');
fprintf('HW 16: Solve the system of nonlinear equations using the zoom-in method\n');
fprintf('Equation 1: y = (1/x)\n');
fprintf('Equation 2: y = e^(2x)-1\n');
fprintf('/u/erdos/students/cshue1/cisc4750/week5/hw16.m\n');
i
