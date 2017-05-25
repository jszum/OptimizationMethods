pkg load symbolic
#[x1,x2] = meshgrid(-10:0.01:10);
syms x1 x2
f = @(x1,x2) 100.*(x2 - x1.^2).^2 + (1 - x1).^2;

ezcontour(f,[-3,3])