function F = fun6_cubic(x,d)
  alpha = x(1);
  beta = x(2);
  gamma = x(3);
  delta = x(4);

  F = alpha + beta*d + gamma*d.^2 + delta*d.^3;
end