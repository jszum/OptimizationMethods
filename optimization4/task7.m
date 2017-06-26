pkg load optim

A = [1 2; 5 -4]
b = [2; -10]

Q = [2 0; 0 2]
c = [0;0]

tic
x = QP_range(A,b,Q,c)
toc

tic
x = QP_conjugacy(A,b,Q,c)
toc

opts =optimset('Algorithm','interior-point-convex','Display','off');
disp('interior-point');
tic
[x,fval,exitflag,output,lambda] = quadprog(Q,c,A,b,[],[],[],[],[],opts);
toc
x