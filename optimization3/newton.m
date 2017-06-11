function [x,k] = newton(fun,x,err)
  stop = 2*err;
  iter = 0;
  while stop > err
      [F,J] = fun(x);
      dx = J\(-F);
      x = x+dx;
      [F,J] = fun(x);
      stop = max(abs(F));
      iter = iter + 1;
  endwhile
  
  iteration = iter
endfunction