#include "h.h"
void setup() {
  // put your setup code here, to run once:
init1();
}

void loop()
{
float tension;
  long i=0;
  pinMode(A6,INPUT);
analogReference(DEFAULT);
 delay(100);
  
  for(long c=0;c<=1000;c++)
    {
     i=i+analogRead(A6);
    }
  i=i/1000;
Serial.println(i);
  tension = (i *0.019)-1.298;
  Serial.print("P:");
  Serial.print(tension);
  Serial.println(" bars");
  delay(1000);


}
