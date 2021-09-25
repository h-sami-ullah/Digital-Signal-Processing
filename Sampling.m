clc;
clear all;
%define analog signal for comparison
t=-100:01:100;
fm=0.02;
x=cos(2*pi*t*fm);
subplot(2,2,1);
plot(t,x);
xlabel('time in sec');
ylabel('x(t)');
title('continuous time signal');
%simulate condition for undersamplingi.e.,fs1<2*fm
fs1=0.03;
n=-2:2;
x1=cos(2*pi*fm*n/fs1);
subplot(2,2,2);
stem(n,x1);
hold on
subplot(2,2,2);
plot(n,x1,':');
title('discrete time signal x(n) with fs1<2fm');
xlabel('n');
ylabel('x(n)');
%condition for Nyquist plot24
fs2=0.04;
n1=-4:4;
x2=cos(2*pi*fm*n1/fs2);
subplot(2,2,3);
stem(n1,x2);
hold on
subplot(2,2,3);
plot(n1,x2,':');
title('discrete time signal x(n) with fs2=2fm');
xlabel('n');
ylabel('x(n)');
%condition for oversampling
n2=-50:50;
fs3=0.5;
x3=cos(2*pi*fm*n2/fs3);
subplot(2,2,4);
stem(n2,x3);
hold on
subplot(2,2,4);
plot(n2,x3,':');
xlabel('n');
ylabel('x(n)');
title('discrete time signal x(n) with fs3>2fm');
