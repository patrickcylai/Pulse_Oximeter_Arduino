close all;
disp('Setting up configuration...');
a=arduino();
Sensorpin = 'A0';
IRpin = 'D2';
REDpin = 'D3';

%% IR LED
writeDigitalPin(a, IRpin,1);
pause(2);
interv = 1000;
t=1;
ir=0;
disp('Recording IR Data');
disp('Please wait...')
tic;
while t<interv
   voltage =  readVoltage(a, Sensorpin);
   ir=[ir,voltage];
%    plot(x)
%    drawnow;
   t=t+1;
end
elapsed_IR = toc
disp('Completed IR');
time_IR = linspace(0,elapsed_IR,1000);
plot(time_IR,ir);
grid on;
xlabel('Time (s)'); ylabel('Voltage'); title('Pulse Oximeter IR Data');

%% RED LED
writeDigitalPin(a, REDpin,1);
writeDigitalPin(a, IRpin,0);
pause(2);
t=1;
red=0;
disp('Recording RED Data');
disp('Please wait...')
tic;
while t<interv
   voltage =  readVoltage(a, Sensorpin);
   red=[red,voltage];
%    plot(x)
%    drawnow;
   t=t+1;
end
elapsed_RED = toc
disp('Completed RED');
time_RED = linspace(0,elapsed_RED,1000);

figure;
plot(time_RED,red);
grid on;
xlabel('Time (s)'); ylabel('Voltage'); title('Pulse Oximeter RED Data');
clear a;