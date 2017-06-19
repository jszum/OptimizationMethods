function F = fun6_quad(x,d)
  alpha = x(1);
  beta = x(2);
  gamma = x(3);
  F = alpha + beta*d + gamma*d.^2;
end