clear;
Is=10e-10;
n=1.2;
fir=0.026;
U=[0:0.01:1]';
I=Is*(exp(U/(n*fir))-1);
figure
hold on;
grid on;
plot(U,I,'o');
x0=[2;2];
x=lsqcurvefit(@fun_5_Shockley,x0,U,I);
x = [1.054e-9; 1.1924]
Ii=x(1,1)*(exp(U/(x(2,1)*fir))-1);
plot(U,Ii,'r');
legend('Shockley diode model','Fitting');
xlabel('Voltage U [V]');
ylabel('Current I [A]');