pkg load symbolic

x0 = [-5,-5];
err = 1e-5;
a = 1;
gdescent(@himmelblau, x0, err,a)

%d = 6
%[x, y] = meshgrid(-d:0.01:d);
%g = (x.^2 + y - 11).^2 + (x + y.^2 - 7).^2;
%
%
%x0 = [-5,-5];
%err = 1e-5;
%a = 1;
%x_solution = gdescent(f,x0,err,a)