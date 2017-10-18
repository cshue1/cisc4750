% script file: data_plot.m
% simulates the throws of darts by placing a random point in the unit
% square by pausing 10 times
%
x = 0.1:0.1:.9;
y = rand(1,9);
for i = 1:9
    text('interpreter','latex',...
        'string','$$\cdot$$',...
        'position',[x(i) y(i)],...
        'fontsize',40,...
        'color',[1 .2 .2])%'r'
end
axis ([0.0,1.0 0.0,1.0])
grid on
hold on
n = 15;
p = polyfit(x,y,n);
xi = linspace(.1,.9,200);
yi = polyval(p,xi);
plot(xi,yi,'color',[.1 .6 .1])