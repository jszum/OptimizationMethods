function [F] = fun6_log(x,d)
  alpha = x(1);
  beta = x(2);
  F = alpha + beta * log(d);
end