function [x0, k] = gdescent_backtrack (fun,x0,err,a)

rho = 0.5;
c = 0.0001;

df = 1;
xk = x0;

  while ((norm(df) > err))
      [f,df] = fun(x0);
      a = backtracking(fun,x0,-df, rho, c);
      x0 = x0 - a*df;
  end

endfunction