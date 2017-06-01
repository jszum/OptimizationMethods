pkg load symbolic

syms x y;
f = (x.^2 + y - 11).^2 + (x + y.^2 - 7).^2;
fs = function_handle(f);

d = 6
[x, y] = meshgrid(-d:0.01:d);
g = (x.^2 + y - 11).^2 + (x + y.^2 - 7).^2;
contour3(x,y,g,200);