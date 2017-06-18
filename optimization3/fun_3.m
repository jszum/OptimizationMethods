function [f,j] = fun_4(x)
  k=1:10;
  f = (2+2.*k-exp(k.*x(1))-exp(k.*x(2))).^2;   
  j = [-exp(k.*x(1)); -exp(k.*x(2)) ];
endfunction