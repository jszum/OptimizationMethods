c = [30; 20]
c = c* (-1)
A = [2 1; 2 3]

b = [60;120]

tic
disp(["Coded Simplex"])
x = simplex(A,b,c')
toc


tic
disp(["Linprog"])
x_lin = linprog(c,A,b)
toc