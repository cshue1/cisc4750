% FIX THIS
a = ratio_range();
z = linspace(a(2),a(1),9)
x = [0 z]
for i = 1:9
    y = i*z;
    x(2) = [1 y];
    w = i*z.*z;
    x(3) = [2 w];
end
x = x';