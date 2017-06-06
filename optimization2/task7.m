clear ;
x = [-1.2;1];
 
tic
[x,f] = FletcherReeves(@f_rosenbrock, x)
time=toc
 
tic
[x,f] = PolakRibiere(@f_rosenbrock, x)
time=toc
 
%x1=-2:0.01:2;
%x2=-2:0.01:4;
%[X1,X2]=meshgrid(x1,x2);
%Y=100.*(X2-X1.^2).^2+(1-X1).^2;