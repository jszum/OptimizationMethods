%pkg load symbolic
%#[x1,x2] = meshgrid(-10:0.01:10);
%syms x1 x2
%f = 100.*(x2 - x1.^2).^2 + (1 - x1).^2;
%fs = @(x1,x2) 100.*(x2 - x1.^2).^2 + (1 - x1).^2;
%
%ezcontour(fs,[-3,3])
a=1;
err = 1e-6;
x1 = [1.2, 1.2]
tic
[solution] = gdescent_backtrack(@rosenbrock_explicit, x1, err,a)
toc

x2 = [-1.2, 1]
tic
[solution] = gdescent_backtrack(@rosenbrock_explicit, x2, err,a)
toc
%[X1, X2] = meshgrid(-10:0.01:10);
%fun = 100.*(X2 - X1.^2).^2 + (1 - X1).^2;
%contour3(X1,X2,fun,200)