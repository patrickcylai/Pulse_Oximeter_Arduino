% Read Arduino data
clc;
clear all;
arduino=serial('/dev/cu.usbmodem1411','BaudRate',115200);
fopen(arduino);
i = 0;
while (i < 100)
    i = i + 1;
    y(i)=fscanf(arduino,'%f');
    drawnow;
    plot(y);
    grid on;
    hold on;
    title('Pulse Oximeter Data');
    xlabel('Time (s)');
    ylabel('Voltage');
    pause(0.1);
end
fclose(arduino);
