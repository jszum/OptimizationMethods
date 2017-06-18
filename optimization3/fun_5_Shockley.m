function [F]=fun_5_Shockley(x,U)
  fi=0.026;
  
  F = x(1) * (exp(U/(x(2)*fi))-1); 
end