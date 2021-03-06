max = 1000;
under = 0;
total = 0;
f=@(x)(x.^3);
real_i = quadgk(f,2,3);
x = linspace(0,3,100);
y = x.^3;
plot(x,y,'k','linewidth',3);
axis ([0 3.5 0 27])
x = rand(max,1)+2;
y = 27*rand(max,1);
for i = 1:max
    if y(i) < x(i)^3
        text('interpreter','latex',...
            'string','$$\cdot$$',...
            'position',[x(i),y(i)],...
            'fontsize',14,...
            'color','r')
        under = under + 1;
    else
        text('interpreter','latex',...
            'string','$$\cdot$$',...
            'position',[x(i),y(i)],...
            'fontsize',14,...
            'color','b')
    end
    total = total + 1;
    integral = under/total*(3*27-2*27);
    text('interpreter','latex',...
        'string',['$$\int_2^3\!x^3\,\mathrm{d}x$$ = ',num2str(integral),...
        newline,'$$\Delta$$ = ',num2str((real_i-integral)/real_i)],...
        'position',[2.50 5.25],...
        'fontsize',20,...
        'horizontalalignment','center',...
        'backgroundcolor',[.3 1 .3],...
        'edgecolor','g');
end