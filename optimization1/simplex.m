function [x] = simplex(A, b, c)

[m,n] = size(A);


#creating initial tableau
diagonal = eye(m);
T = [A diagonal b];
ct = [c zeros(1,m + 1)];
T = [T;ct];

[r, c] = size(T);

#iterating trhough variables - columns
pivot = 0;
for i = 1:c
  #find minimum in the last row
  [val pivot_col] = min(T(r,:));
  
  if val < 0
   pivot_row = findPivot(T, pivot_col);
  else
    x = zeros(n,1);
    for it=1:n
       [piv, spot] = max(T(:,it));
       
       if(T(r,it) == 0)
        x(it,1) = T(spot,c);
       else 
        x(it,1) = 0;
       endif
    end
    break;
  endif
  
  if pivot_row > 0
    i = pivot_col;
    j = pivot_row;
    T(j,:) = T(j,:)/T(j,i);
    for k = 1: r
        if (k != j)
            T(k,:) = T(k,:) - T(k,i)*T(j,:);
        end
    end
  endif
endfor



endfunction