clear;
pkg load symbolic
syms x1 x2;
F1=x1^3+3*x1^2+3*x1-x2;
F2=x1^2+2*x1-x2+1;
f=0.5*(F1^2+F2^2);

x0 = [2; 2];
%x=fsolve(@fun_1,x0)
err=1e-5;

tic
[x,k]=broyden(@fun_1,x0,err,2)
toc

%xx1=-5:0.1:4;
%xx2=-50:0.1:50;
%[X1,X2]=meshgrid(xx1,xx2);
%Y=X1.^6/2+3.*X1.^5+8.*X1.^4+(11-X2).*X1.^3+(15/2-4.*X2).*X1.^2+(2-5.*X2).*X1+(X2-1).^2/2+X2.^2/2;
%contour3(X1,X2,Y,400)