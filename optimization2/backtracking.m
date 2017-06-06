function a = backtracking(fun,x,d, rho, c)
a = 1;

[fk, gk] = fun(x);
xx = x;
x = x + a*d;
fk1 = fun(x);

while (fk1 > (fk + c*a*(gk'*d))),

  a = a*rho;
  x = xx + a*d;
  fk1 = fun(x);
  
end