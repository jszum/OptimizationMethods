function [f0,g0] = himmelblau(xp)

syms x y
f = (x.^2 + y - 11).^2 + (x + y.^2 - 7).^2;
fs = function_handle(f);
f0 = fs(xp(1),xp(2));

g = gradient(f)';
gs = function_handle(g);
g0 = gs(xp(1),xp(2));


endfunction