//https://www.youtube.com/watch?v=Eth12qG9-Ls

#include <Servo.h>
Servo myservo1;

void setup()
{
  Serial.begin(9600);
  myservo1.attach(9);  //PWM Pin Connetion
  delay(1);
  myservo1.write(10);  //DO NOT CHANGE! Required to activate ESC
  delay(5000);
}

void loop()
{
  while(Serial.available()>0)
  {
    int val = Serial.parseInt();  //reads integer values sent through serial monitor
                                  //minimum value = 65
    Serial.println(val);          //Displays read int value
    myservo1.write(val);           //Writes read int value to ESC 
  }
}
