p1 = [2*1/-45 -19*2/-45 2*108/-45 2*(-180)/-45]
p2 = [1/6 -17/6 76/6 60/6]
p3 = [1/-30 -14/-30 43/-30 -30/-30]
p4 = [1/252 -10/252 27/252 -18/252]
g = p1 + p2 + p3 + p4;
x = [1 3 6 10];
y = [4 7 2 1];
x2 = linspace(0,12,200);
y2 = polyval(g,x2);
plot(x,y,'o',x2,y2)
