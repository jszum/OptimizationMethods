c = [1; 1]

c = c.*-1

A = [1 2; 4 2; -1 1]

b = [4; 12; 1]

tic
disp(["Coded Simplex"])
x = simplex(A,b,c')
toc


tic
disp(["Linprog"])
x_lin = linprog(c,A,b)
toc