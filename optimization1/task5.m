c = [7; 8; 12]

c = c.*-1

A = [1 1 1; 0 0 -1; 3 -1 0]

b = [12000; 2000; 0]

tic
disp(["Coded Simplex"])
x = simplex(A,b,c')
toc


tic
disp(["Linprog"])
x_lin = linprog(c,A,b)
toc

f = [7; 8; 12]
Aeq=[0 0 0; 0 0 0; 1 1 1]; 
beq=[0 0 12000]; 
A = [1 1 1; 0 0 -1; 1 -3 0]
b = [12000; -2000; 0]
lb = zeros(3,1); 

tic
disp(["Linprog"])
x = linprog (f, A, b, Aeq, beq', lb, [])
toc
