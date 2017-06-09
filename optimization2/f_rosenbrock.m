function [y,gy,hy] = f_rosenbrock(x)
y = 100*(x(2)-x(1).^2).^2+(1-x(1)).^2;
gy = [-400*(x(2)-x(1)^2)*x(1)-2*(1-x(1)) ; 200*(x(2)-x(1)^2)];
hy = [-400*(x(2)-3*x(1)^2)+2, -400*x(1); -400*x(1), 200];
end