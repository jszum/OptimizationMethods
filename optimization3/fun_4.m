function [F] = fun_4(x)
  k = 1:10;
  F = 2 + 2*k-exp(k*x(1))-exp(k*x(2));
endfunction