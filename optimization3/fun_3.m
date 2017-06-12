function [f,j] = fun_3(x)
f = [2*x(1) - x(2) - exp(-x(1));
      -x(1) + 2*x(2) - exp(-x(2))];
j = [ 2+exp(-x(1)), -1 ; -1, 2+exp(-x(2)) ];
end
