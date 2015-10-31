Sensorpin = 'A0';
IRpin = 'D2';
REDpin = 'D3';

IRon = false;
REDon = true;

while true
   voltage =  readVoltage(a, Sensorpin);
   
   if IRon
       writeDigitalPin(a, IRpin, 1);
   else
       writeDigitalPin(a, IRpin, 0);
   end
   
   if REDon
       writeDigitalPin(a, REDpin, 1);
   else
       writeDigitalPin(a, REDpin, 0);
   end
   prompt = 'Enter a value for RED';
   REDon = input(prompt)
end