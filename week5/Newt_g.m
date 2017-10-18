function x = Newt_g(f_name,x0,xmin,xmax,n_points)
% Newton iteration with graphic illustration
del_x = 0.001;
wid_x = xmax-xmin;
dx = (xmax-xmin)/n_points;
xp=xmin:dx:xmax;
yp=feval(f_name,xp);
plot(xp,yp);
xlabel('x');
ylabel('f(x)');
title('Newton Iteration'), hold on
ymin = min(yp);
ymax = max(yp);
wid_y = ymax-ymin;
yp=0.*xp;
plot(xp,yp)
x = x0;
xb = x+999;
n = 0;
while abs(x-xb) > 0.000001
    if n>300
        break;
    end
    y = feval(f_name,x);
    fprintf('  n=%3.0f,  x=&12.5e,   y=%12.5e\n', n, x, y);
    xsc = (x-xmin)/wid_x;
    if n<4
        text(x,wid_y/20, [num2str(n)])
    end
    y_driv = (feval(f_name,x+del_x) - y)/del_x;
    xb=x;
    x = xb - y/y_driv;
    n = n+1;
    plot([xb,x],[y,0])
end
plot([x x],[0.05*wid_y 0.2*wid_y])
text(x,0.2*wid_y, 'Final Solution')
plot([x (x-wid_x*0.004)],[0.01*wid_y 0.09*wid_y])
plot([x (x+wid_x*0.004)],[0.01*wid_y 0.09*wid_y])