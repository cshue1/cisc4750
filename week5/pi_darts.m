% script file name: pi_darts.m
% simulates the throws of darts
%
t = 0:0.2:pi/2;
v = sin(t);
w = cos(t);
plot(v,w,'color',[.1 .6 .1])
axis square
grid on
n_inside = 0;
for j=1:5
    x = rand(100,1);
    y = rand(100,1);
    for i=1:100
        text('interpreter','latex',...
            'string','$$\cdot$$',...
            'position',[x(i),y(i)],...
            'fontsize',30,...
            'color','r')
        if (x(i)^2+y(2)^2 <= 1)
            n_inside = n_inside + 1;
        end
    end
    pi_estimate = 4*n_inside/(j*100);
    text('interpreter','latex',...
        'string',['$$\pi$$ = ',num2str(pi_estimate)],...
        'position',[.3 .6],...
        'fontsize',30,...
        'horizontalalignment','center',...
        'backgroundcolor',[.3 1 .3],...
        'edgecolor','g'); %edge of pi display box
    pause;
end
print -depsc2 /u/erdos/students/cshue1/cisc4750/week5/pi_darts.ps %creates a post script of the output