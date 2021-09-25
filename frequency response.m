b = [0.2];
a= [1, -0.52, 0.68];
w = [0:1:500]*pi/500;
H=freqz(b,a,w);
magH = abs(H);
phaH = angle(H)*180/pi;
subplot(2,1,1);
plot(w/pi,magH);
title('Magnitude Response');
xlabel('frequency in pi units');
ylabel('│H│');
subplot(2,1,2);
plot(w/pi,phaH);
title('Phase Response');
xlabel('frequency in pi units');
ylabel('Degrees');