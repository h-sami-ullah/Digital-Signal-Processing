t=1:100;
x=input('enter the signal');
t=length(x);                                 %LENGHT OF INPUT SIGNAL
M=input('enter the moving average sample');
delay=zeros(1,t);
U=x;
for k =0:1-M                        %LOOP FOR SUMATION AND ADDING DELAY
    
  U= U+delay;
     delay=[k,x];
     if k>0
         delay=[0:k,x];
         for i=1:k
         delay(1,k)=zeros(1,1);
         end
     else
       end
   
    
end                                       %MOVING AVERGE 
y=1/M*U;
