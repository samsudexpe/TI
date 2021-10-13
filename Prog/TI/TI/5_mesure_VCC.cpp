#include "h.h"



/////////////////////////////////////////////////////////////////

String mesure(void)//mesure de la tension des piles
{ float tension;
  long i=0;
  pinMode(7,OUTPUT);
  digitalWrite(7,HIGH);
  pinMode(A7,INPUT);
  analogReference(INTERNAL);
  delay(100);
  
  for(long c=0;c<=1000;c++)
    {
     i=i+analogRead(A7);
    }
  i=i/1000;
  
  tension = (i * (1.2 / 1023.0))*10;
  Serial.print("V : ");
  Serial.println(tension);

  
  digitalWrite(7,LOW);
  pinMode(7,INPUT);
  //delay(100); 
  return "tension pile : "+String(tension, 3);
}
