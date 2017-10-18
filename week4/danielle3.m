f = @(x) (.002)*(9.81)-1.4e5*(x.^1.5)-1.5e-5*(x.^2);
x(1) = 30;
x(2) = 30.1;
for i =3:7
    x(i) = x(i-1) - (f(x(i-1)))*((x(i-1)-x(i-2))/f(x(i-1))
    -f(x(i-2));
    % DOUBLE CHECK PARENTHESES WITH DANIELLE'S PRESENTATION
end
root = x(7)