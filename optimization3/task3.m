pkg load symbolic

x0=[-5; -5];
%x=fsolve(@fun_3,x0)
err=0.00001;

tic
[x,iter_newton]=newton(@fun_2,x0,err)
toc

tic
[x,iter_broyden]=broyden(@fun_2,x0,err,2)
toc
 
syms x1 x2;
F1=2*x1-x2-exp(-x1);
F2=-x1+2*x2-exp(-x2);
f=0.5*(F1^2+F2^2)
xx1=-6:0.1:6;
xx2=-6:0.1:6;
[X1,X2]=meshgrid(xx1,xx2);
Y=(5.*X1.^2)/2+(exp(-X2)-2.*exp(-X1)-4.*X2).*X1+(2.*X2-exp(-X2)).^2/2+(X2+exp(-X1)).^2/2;
contour3(X1,X2,Y,400)