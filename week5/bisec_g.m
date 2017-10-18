function bisec_g(f_name, a, c, xmin, xmax, n_points)
% a,c: end points of initial interval
% tolerance: tolerance
% it_limit: limit of iteration number
% Y-a,Y-c: y values of the current end points
%fun_f(x) = functional value at x
clear Y_a, clear Y_c
wid_x = xmax - xmin; x = (xmax - xmin)/n_points;
xp = xmin:x:xmax; yp = feval(f_name,xp);
plot(xp,yp); xlabel('x');ylabel('f(x)');
title('Bisection Method'),hold on
ymin = min(yp); ymax = max(yp); wid_y = ymax-ymin;
yp = 0.*xp; plot(xp,yp)
fprintf('Bisection Scheme\n\n');
tolerance = 0.000001; it_limit = 30;
fprintf( ' It.    a          b          c         fa=f(a)     ');
fprintf( 'fc=f(c)   abs(fc-fa) \n');
it = 0;
Y_a = feval(f_name,a); Y_c = feval(f_name,c);
plot([a,a],[Y_a,0]); text(a,-0.1*wid_y, 'x=a')
plot([c,c],[Y_c,0]); text(c,-0.1*wid_y, 'x=c')
if (Y_a*Y_c > 0)
    fprintf('   f(a)f(c) > 0 \n');
else
    while 1
        it = it +1;
        b = (a + c)/2; Y_b = feval(f_name,b);
        plot([b,b],[Y_b,0],':'); plot(b,0,'o')
        if it<4
            text(b,wid_y/20, [num2str(it)])
        end
        fprintf('%3.0f %10.6f,%10.6f', it, a, b);
        fprintf('%10.6f, %10.6f, %10.6f',c,Y_a,Y_c);
        fprintf('%12.3e\n', abs(Y_c - Y_a));
        if (abs(c-a)/2<=tolerance)
            fprintf(' Tolerance is satisfied. \n');break
        end
        if (it>it_limit)
            fprintf('Iteration limit exceeded. \n');break
        end
        if(Y_a*Y_b <= 0)
            c = b; Y_c = Y_b;
        else 
            a = b;
            Y_a = Y_b;
        end
    end
    fprintf('Final result: Root = %12.6f \n',b);
end
x=b;
plot([x,x],[0.05*wid_y 0.2*wid_y])
text(x, 0.25*wid_y, 'Final solution')
plot([x (x-wid_x*0.004)],[0.05*wid_y 0.09*wid_y])
plot([x (x+wid_x*0.004)],[0.05*wid_y 0.09*wid_y])