function [f,g] = ratio_range()
    f = lower_limit;
    g = upper_limit;
end
function f= lower_limit()
    p = [1 1 -1];
    f = max(roots(p));
end
function f = upper_limit()
    p = [1 -1 -1];
    f = max(roots(p));
end