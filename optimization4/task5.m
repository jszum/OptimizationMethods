A = [1 1; -1 2; 2 1]
b = [2; 2; 2]

Q = [1 -1; -1 2]
c = [-2; -6]

tic
x = QP_range(A,b,Q,c)
toc

tic
x = QP_conjugacy(A,b,Q,c)
toc