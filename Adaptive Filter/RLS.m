
clear all;
clc;
close all;
input = importdata('data.mat');
fs = input.fs;
d = input.reference;
x = input.primary;
Ns= length(x);

M=21;
I = eye(M);
delta = [0.01,0.02,0.04,0.08,0.1];

 
w1 = zeros(M,1);
y = zeros(Ns, 1);
e = zeros(Ns, 1);
xx = zeros(M,1);
lambda=0.99;
Error = zeros(length(delta),Ns);
performance = zeros(1,Ns);
for i=1:length(delta)
    p = delta(i) * I;
for n = 1:Ns
    xx = [x(n); xx(1:M-1)];
    k = (p * xx) ./ (lambda + xx' * p * xx);
    y(n) = xx'*w1;
    e(n) = d(n) - y(n);
    w1 = w1 + k * e(n);
    p = (p - k * xx' * p) ./ lambda;
    w(:,n) = w1;
    MSE = sum(e.^2)/n;
    performance(i,n) = MSE;
    if n==Ns
        Error(i,1:end) = e;
    end
    
end
disp(delta(i))
end



