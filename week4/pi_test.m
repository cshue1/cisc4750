% script file name: pi_test.m
% simulates the throws of darts by placing a random point in the unit
% square and pausing 10 times
%
t = 0:0.02:pi/2;
v = sin(t);
w = cos(t);
plot(v,w,'color',[.8 .6 .8]) %plots quarter of a circle in [rgb] palette
axis square
grid on
for i = 1:10
    x = rand(100,1);
    y = rand(100,1);
    text('interpreter','latex',...
        'string','$$\cdot$$',...
        'position',[x(i) y(i)],...
        'fontsize',60,...
        'color',[.8 .2 1])%'r'
    pause;
end