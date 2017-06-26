function [x_sol] = QP_conjugacy(A,b,Q,c)

  disp("QP conjugacy")

  x = A\b;
  g = c+Q*x;
  r = A*x -b;
  
  [Qa, Ra] = qr(A');
  L = chol(Qa'*Q*Qa);
  
  W = Qa*inv(L);
  [m,n] = size(W);
  
  Z = W(1:end, 1:n-m);
  Y = W(1:end, n-m+1:end);
  
  U = A*Y;
  py = U\(-r);
  pz = -Z'*g;
  
  p = Y*py + Z*pz;
  
  x_sol = x + p;

endfunction