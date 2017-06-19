clear;
c=3;
d=0.1:0.1:10;
L=128.3+32.5*log(d)+c;
grid on; 
hold on;
plot(d,L,'o');
xlabel('Distance [km]');
ylabel('Loss [dB]');
x0=[2;2];
x=lsqcurvefit(@fun6_log,x0,d,L)
x0=[2;2;2];
x=lsqcurvefit(@fun6_quad,x0,d,L)
x0=[2;2;2;2];
x=lsqcurvefit(@fun6_cubic,x0,d,L)
 
%y=131.3+32.5*log(d);
%plot(d,y,'r','LineWidth',2);
%y=102.6901+23.9942*d-1.4535*d.^2;
%plot(d,y,'g','LineWidth',2);
%y=86.0774+43.2545*d-6.1973*d.^2+0.3131*d.^3;
%plot(d,y,'b','LineWidth',2);
%legend('Model','Log','Quadratic','Cubic');
