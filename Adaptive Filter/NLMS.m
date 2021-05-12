clear all;
clc;
close all;
input = importdata('data.mat');
fs = input.fs;
d_n = input.reference;
x_n = input.primary;
N= length(x_n);


coef=40;
W = zeros(1,coef); 
X= zeros(1,coef);


beta = [0.000001,0.00001,0.0001,0.001,0.1];

Error = zeros(length(beta),N);
mse_final = zeros(1,length(beta));
SNR_db = zeros(1,length(beta));
y = zeros(length(beta),N);
e = zeros(length(beta),N);
step=0;
Epsilon=0.001;
performance = zeros(length(beta),N);


for i =1:length(beta)
    
for k = 1:N 
    X = [x_n(k),X(1:end-1)];
    y(i,k) = W*X';
    e(i,k) = d_n(k) - y(i,k);
    step = beta(i)/(Epsilon+ (X * X'));
    W = W + 2*step*e(i,k)*X ;
   
    MSE = sum(e(i,1:end).^2)/k;
    performance(i,k) = MSE;
    
    if k==N
        mse_final(1,i) = MSE;
        SNR = mean(x_n.^2)/mean(e(i,1:end).^2);
        SNR_db(1,i) = 10 * log10(SNR);
        Error(i,:)= e(i,1:end);
    end
    
end

end
