function [x, n, res,rx] = conjugate_gradient(A, f, x0, tolerance, it)

x = x0;         % initial value
r = f - A*x0;   % initial solution
p = r;         
r1 = r'*r;
n = 0;     % number of iteration for residual error

normf = norm(f);
 
while (norm(r)/normf > tolerance)   % tolerance condition
    a = A*p;
    alpha = r1/(a'*p);          % step 1 - compute alpha
    x = x + alpha*p;            % step 2 - compute next x
    r = r - alpha*a;            % compute next r
    r2 = r'*r;                  
    beta = r2/r1;               % beta
    p = r + beta * p;           % next p
    r1 = r2;
    n = n + 1;
    res(n) = norm(f - A*x); % compute residual error
    rx(n) = norm(x - x0); % compute solution error
    if (n == it)         % if we reached the maximum number of iterations
        break
    end
end
