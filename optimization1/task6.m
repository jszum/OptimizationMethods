c = [30; 25]

c = c.*-1

A = [1 3; 1 0; 2 1]

b = [45; 12; 40]

tic
disp(["Coded Simplex"])
x = simplex(A,b,c')
toc


tic
disp(["Linprog"])
x_lin = linprog(c,A,b)
toc