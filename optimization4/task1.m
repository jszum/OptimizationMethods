pkg load symbolic

syms x y;

#fplot(@(x1,x2) x1+x2)
%cylinder([2 2])
ezsurf (@(x, y) x + y, [-1.5 1.5 -1.5 1.5])
hold
[X, Y, Z] = cylinder([sqrt(2) sqrt(2) sqrt(2) sqrt(2)],200);
surf(X,Y,Z); 

