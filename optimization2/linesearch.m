function [x] = linesearch(f, pk, a_max, it)

alpha_zero = 0;
alpha_max = a_max;
akpha_k = rand();

for i = 1:it



fi = f(xk + alpha_k * pk)

endfor

endfunction