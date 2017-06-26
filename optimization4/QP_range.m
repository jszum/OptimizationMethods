function [x_sol] = QP_range(A,b,Q,c)

  disp("QP range")
  x = A\b;
  g = c+Q*x;
  r = A*x -b;
  invQ = inv(Q);
  lambda = (A*invQ*A')\(A*invQ*g-r);
  p= Q\(A'*lambda -g);
  x_sol = x + p;

endfunction