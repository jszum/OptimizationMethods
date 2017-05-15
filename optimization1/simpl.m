function [x] = simplex(A, b, c)

[m,n] = size(A);


#creating initial tableau
diagonal = eye(m);
T = [A diagonal];
ct = [c zeros(1,m + 1)];
T = [T;ct]

[r, c] = size(T);



endfunction