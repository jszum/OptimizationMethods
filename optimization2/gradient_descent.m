function[x,n] = gradient_descent(A,b,x0,it, err)

r = b - A*x0;
x = x0;

n = 0;
 while (norm(r) > err)
     r = A*x - b;
     alpha = r'*r/(r'*A*r);
     
     x = x - alpha*r;
     n = n +1;
     printf('step '+ n);
     
 end  

endfunction