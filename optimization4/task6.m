A = [1 2 -1; 1 -1 1 ]
b = [4; -2]

Q = [2 0 0; 0 2 0; 0 0 2]
c = [0;0;0]

tic
x = QP_range(A,b,Q,c)
toc

tic
x = QP_conjugacy(A,b,Q,c)
toc