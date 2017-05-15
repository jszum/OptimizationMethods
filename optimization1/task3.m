c = [0.08; 0.1; 0.25]
cf = -1 .*c

A = [0.5 2 2; 1 1 1]

b = [7000; 5000]

tic
disp(["Coded Simplex"])
x = simplex(A,b,cf')
toc


tic
disp(["Linprog"])
x_lin = linprog(c,A,b)
toc

c' * x