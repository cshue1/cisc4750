% CHRISTINE SHUE
% DUE: JULY 31, 2017
% HW 9: third order interpolation of data
% /u/erdos/students/cshue1/cisc4750/week4/hw9.m
%

x = [-3 -2 -1 0 1 2 3];
y = [-28 -9 -1 0.025 1.025 9 27.5];

% 1st way
p = polyfit(x,y,3);
x2 = linspace(-3,3,200);
y2 = polyval(p,x2);
plot(x,y,'o r',x2,y2,': b')

% 2nd way
yi = interp1(x,y,x2,'cubic');
% plot(x,y,'r o',x2,yi, 'b :');

title('3rd Power Interpolation','FontSize',14);