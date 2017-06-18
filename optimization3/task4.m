clear
pkg load optim symbolic

x0 = [0.3; 0.4];
tic
[x,resnorm,res,eflag, output]= lsqnonlin(@fun_4,x0);
toc
x
output

#opts = optimoptions(@lsqnonlin,'SpecifyObjectiveGradient',true);
opts = optimset ("Jacobian", "on")
tic
[x,resnorm,res,eflag,output_jacobian] = lsqnonlin(@fun_4_Jacobian,x0,[],[],opts);
toc
x
output_jacobian
 
syms x1 x2;
 
xx1=0:0.001:1;
xx2=0:0.001:1;
[X1,X2]=meshgrid(xx1,xx2);
Y=(exp(2*X1)+exp(2*X2)-6).^2+(exp(3*X1)+exp(3*X2)-8).^2 ...
    +(exp(4.*X1)+exp(4.*X2)-10).^2+(exp(5*X1)+exp(5*X2)-12).^2 ...
    +(exp(6.*X1)+exp(6.*X2)-14).^2+(exp(7*X1)+exp(7*X2)-16).^2 ...
    +(exp(8.*X1)+exp(8.*X2)-18).^2+(exp(9*X1)+exp(9*X2)-20).^2 ...
    +(exp(10.*X1)+exp(10.*X2)-22).^2+(exp(X1)+exp(X2)-4).^2;
contour3(X1,X2,Y,200)