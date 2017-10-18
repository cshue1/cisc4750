function y = humps(x)
% y = humps(x),y = 1 ./ ((x-0.3).^2 + 0.01) + 1 ./ ((x-0.9).^2 + 0.04) - 6
% filename: humps.m
% x is a scalar
% y is a scalar
%
    y = 1 ./ ((x-0.3).^2 + 0.01) + 1 ./ ((x-0.9).^2 + 0.04) - 6;
end