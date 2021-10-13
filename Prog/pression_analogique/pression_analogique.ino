
#include <SPI.h>


void setup() {
Serial.begin(9600);
Serial.println("CLEARDATA");
 Serial.println("LABEL,Heure,Tension,Pression");
pinMode(A0,INPUT);
}

void loop() {
 
 float mes=analogRead(A0);
 float m=(mes*10000)/175;
 
Serial.print("DATA,TIME,");
 
  Serial.print(mes);Serial.print(",");
 
  Serial.println(m);Serial.print(",");
 delay(1000);

}
