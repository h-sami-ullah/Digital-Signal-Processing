x=[1,2,1];% our input signal
h=[1,1,1]; % impulse response
u=length(x); %tells length of input signal i.e=3
v=length(h); % tells length of impulse response i.e=3
X=[x,zeros(1,v)]; % add zeros infront of input signal to make same length
H=[h,zeros(1,u)]; % add zeros infront of h[n] to make same length
z=u+v-1; % length of signal after convolution
for c=1:z
    y(c)=0;
    for b=1:u
        if (c-b+1)>0
        y(c)=y(c)+X(b).*H(c-b+1); % formulate convolution
        end
    end
end
y % display value of output after convolution
stem(y,'r') % plot discrete time signal
title('Convolution of Signal');
xlabel('n');
ylabel('y[n]');
