function [F,J] = fun_4_Jacobian(x)
k = 1:10;

F = 2 + 2*k-exp(k*x(1))-exp(k*x(2));

J = zeros(10,2);
J(k,1) = -k.*exp(k*x(1));
J(k,2) = -k.*exp(k*x(2));
endfunction