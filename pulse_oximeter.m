clc;
clear;
close all;
a=arduino();
Sensorpin = 'A0';
IRpin = 'D2';
REDpin = 'D3';

IRon = false;
REDon = true;
writeDigitalPin(a, IRpin,1);
pause(2);
interv = 1000;
t=1;
x=0;
while t<interv
   voltage =  readVoltage(a, Sensorpin);
   x=[x,voltage];
   %drawnow;
   t=t+1;
end

plot(x);
grid on;