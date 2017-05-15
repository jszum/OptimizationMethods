c = [1.9; 1.5]

c = c.*-1

A = [0 1; 1 0; -0.5 1]

b = [3; 6.4; 0]

tic
disp(["Coded Simplex"])
x = simplex(A,b,c')
toc


tic
disp(["Linprog"])
x_lin = linprog(c,A,b)
toc