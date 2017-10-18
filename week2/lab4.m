%
% CHRISTINE SHUE
% JULY 13, 2017
% LAB 4
%
%
f = inline('1.425.*x.^3 + 4.054.*x.^2 - 0.475.*x -0.8042');
x = linspace(-5,5,200);
y = f(x);
plot(x,y)
axis([-5 5 -3 8])
grid on
title ('LAB 4: f(x) = 1.425*x^3 + 4.054*x^2 - 0.475*x -0.8042');