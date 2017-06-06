function [u, niter, flag, res, rx] = CG(A, f, s, tol, maxiter)
u=s;
r=f-A*s;
p=r;
rho=r'*r;
niter=0;
flag=0;
normf=norm(f);
 
while (norm(r)/normf>tol) % break condition
    a=A*p;
    alpha=rho/(a'*p);
    u=u+alpha*p;
    r=r-alpha*a;
    rho_new=r'*r;
    p=r+rho_new/rho*p;
    rho=rho_new;
    niter=niter+1;
    res(niter)=norm(f-A*u); % res error
    rx(niter)=norm(u-s);    % sol error
    if(niter==maxiter) % max iter number reached
        flag=1;
        break
    end
end