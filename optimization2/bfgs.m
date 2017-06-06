function [x] = bfgs(fun, x, err)
H = diag([2,6]);
tol = 0.0001;
[y,grad] = fun(x);
dist = 2*tol;

while dist>err
    [value,grad] = fun(x);
    
    p = -H*grad;
    alpha = linesearch_secant(fun,p,x);
    
    x = x + alpha*p;
    s = alpha*p;
    dist = norm(s);
    [newvalue,newgrad] = fun(x);
    y = newgrad - grad;
    rho = 1/(y'*s);
    H = (eye(2) - rho*s*y')*H*(eye(2) - rho*y*s') + rho*s*s'; 
end