clear all;
clc;
close all;
input = importdata('data.mat');
fs = input.fs;
d = input.reference;
x = input.primary;
N= length(x);


coef=21; 
X = zeros(coef,1);
w = zeros(coef,1);
y = zeros(N,1);
e = zeros(N,1);

beta = [0.000001,0.00001,0.0001,0.001,0.1];

performance = zeros(length(beta),N);
Error = zeros(length(beta),N);
mse_final = zeros(1,length(beta));
SNR_db = zeros(1,length(beta));


for i=1:length(beta)
for n = 1:N
    X = [X(2:coef);x(n)];
    y(n) = w' * X;
    e(n) = d(n) - y(n);
    MSE = sum(e.^2)/n;
    w = w + 2*beta(i) * e(n) * X;
    
    W(:,n) = w;
    MSE = sum(e.^2)/n;
    performance(i,n) = MSE;
    if n==N
        mse_final(1,i) = MSE;
        SNR = mean(x.^2)/mean(e.^2);
        SNR_db(1,i) = 10 * log10(SNR);
        Error(i,:) =e;
    end
end
end
