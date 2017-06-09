pkg load symbolic

syms x1 x2
f1 = x1**3 + 3*x1**2 + 3*x1 - x2;
f2 = x1**2+2*x1 -x2 + 1;

f1s = function_handle(f1);
f2s = function_handle(f1);
expand(f1**2)
expand(f2**2)
f = (f1**2+f2**2);
expand(f)
hessian(f)