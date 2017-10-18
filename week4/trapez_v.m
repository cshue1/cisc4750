function I = trapez_v(f,h)
I = h*(sum(f)-(f(1)+f(length(f)))/2);