function [f,j] = fun_1(x)
f=[x(1)^3-3*x(1)^2+3*x(1)-x(2)-3;
      x(1)^2-2*x(1)-x(2)];
j=[3*x(1)^2-6*x(1)+3,-1;2*x(1)-2,-1];  
end