#include <SoftwareSerial.h>   //Software Serial Port

int Sensorpin = A0;
int IRpin = 2;
int Redpin = 3;
boolean IRon = false;
boolean Redon = true;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(Sensorpin, INPUT);
  pinMode(IRpin, OUTPUT);
  pinMode(Redpin, OUTPUT);
  digitalWrite(Redpin, HIGH);
}

void loop() {
  // put your main code here, to run repeatedly:
  int pulseReading = analogRead(Sensorpin);
  float voltage = pulseReading * (5.0/1023.0);

  Serial.println(voltage, DEC);
  delay(1);
  
  char command = Serial.read();
//  if (command == 'i')
//  {
//    if (IRon == false)
//    {
//      digitalWrite(IRpin, HIGH);
//      IRon = true;
//    }
//    else
//    {
//      digitalWrite(IRpin, LOW);
//      IRon = false;
//    }
//  }

//  if (command == 'r')
//  {
//    if (Redon == false)
//    {
//      digitalWrite(Redpin, HIGH);
//      Redon = true;
//    }
//    else
//    {
//      digitalWrite(Redpin, LOW);
//      Redon = false;
//    }
//  }
}
