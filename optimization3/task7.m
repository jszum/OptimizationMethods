pkg load symbolic
clear;
A = [-4 0.1 0.1 0 -10 0 -50 -8;
      0 -1 0 -23 0 -28 0 0;
      0 0 -0.2 0 6 0 -1 -6;
      0 1 0 -1 0 -0.2 0 0;
      0 0 -1 0 -0.2 0 0 0;]
      
syms x1 x2 x3 x4 x5 x6 x7 x8;

X = [x1; x2; x3; x4; x5; x6; x7; x8]

fi = [-x2*x3 + 8*x3*x4 - 500*x4*x5 + 50*x4*x2;
      x1*x3 + 0.2*x1*x5;
      -x2*x2 - 1.5*x1*x4 + x2*x4;
      -x1*x5;
       x1*x4];

F = A*X


sol = solve(F(1)==0,F(2)==0,F(3)==0,F(4)==0,F(5)==0,x1,x2,x3,x4,x5)

X_lin = [sol.x1; sol.x2; sol.x3; sol.x4; sol.x5]

X_nonlin = [0; -(39*x6)/40; (3055*x6)/157117; -(47*x6)/40; -(15275*x6/157116)]


X_lin + X_nonlin
%disp("Nonlinear part:")
%
#solve(fi(1)==0,fi(2)==0,fi(3)==0,fi(4)==0,fi(5)==0)
