function x = Newt_n(f_name,x0)
% Newton iteration with no graphics
x = x0;
xb = x-999;
n = 0;
del_x = 0.01;
while abs(x-xb) > 0.000001
    n = n+1;
    xb = x;
    if n > 300
        break;
    end
    y = feval(f_name,x);
    y_driv = (feval(f_name, x+del_x) - y)/del_x;
    x = xb - y/y_driv;
    fprintf( 'n=%3.0f, x=%12.5e, y=%12.5e, ', n, x ,y);
    fprintf( 'yd=%12.5e \n', y_driv);
end
fprintf('\n    Final answer = %12.6e\n', x);