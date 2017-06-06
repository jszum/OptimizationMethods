
Iter=100;
figure
hold all on
ss=[5,8,12,20];
for i=1:4
    s=ss(i);
    A=hilb(s);
    b=ones(1,s)';
    xw=inv(A)*b;
    x0=zeros(size(xw));
    [x_CG, niter, flag, res_CG, rx_CG]=CG(A,b,x0,0.000001,Iter);
    niter
    semilogy(res_CG)
end
 
legend('N=5 - 6 iter','N=8 - 19 iter','N=12 - 39 iter','N=20 - 34 iter');
title('Residual error of CG algorithm solution');