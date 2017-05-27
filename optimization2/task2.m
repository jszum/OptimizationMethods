pkg load symbolic

#syms x1 x2
f1 = @(x1,x2) 2.*x1.^2 - x1.*x2 + (x2.^2)./2 -3.*x1 + 3.5;
f2 = @(x1,x2) (-3.*(x1.^2))/2 + x1.*x2 - (x2.^2)/2 + 2.*x1 - 1
#f3
#ezcontour(f2,[-5,5])

[x1,x2] = meshgrid(-­1:0.01:1); 
z = 2.*x1.^2 - x1.*x2 + (x2.^2)./2 -3.*x1 + 3.5;
[C,h] = contour(x1,x2,z); 