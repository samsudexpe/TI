#include "h.h"

SoftwareSerial BTSerial(9, 10); // RX | TX

int swt=2;
unsigned long t;
void BTH()
{   
    while(digitalRead(2)==LOW)
   {
    t++;
    
    }
     
    Serial.println(t);
    if(t>200000)
    {
       digitalWrite(6, LOW);
      Serial.println(" long");
      Serial.println("Changer le nom");//Serial.begin(9600);
Serial.println("connecter vous au module BL et suivre les instructions");
     // BTSerial.begin(38400);  // HC-05 default speed in AT command more
      swt=1;
    }
    else
    { digitalWrite(6, LOW);
       Serial.println(" court");
       Serial.println("Communication"); //BTSerial.begin(9600);
        //BTSerial.begin(9600);
       swt=2;
    }
  t=0; 
 
  Serial.println("");
   Serial.println(""); Serial.println("");

   
 
  
   
}



void setup()
{
  pinMode(2, INPUT_PULLUP);//Configuration du réveil (Pin3) en entrée pour l'activation du bluetooth
  pinMode(6, OUTPUT);  // this pin will pull the HC-05 pin 34 (key pin) HIGH to switch module to AT mode
  
  pinMode(5, OUTPUT);
  //digitalWrite(6, HIGH);
  digitalWrite(5, HIGH);
  
  delay(100);
  Serial.begin(9600);
  //Serial.println(mesure());
  rtcinit();
  RTC();
  Serial.println("Enter AT commands:");
  Serial.println("Exemple pour changer le nom du bluetooth: AT+NAME=BT01");
  BTSerial.begin(9600);
   attachInterrupt(0, BTH, FALLING);   //Idem mais pour l'activation du Bluetooth
}

void loop()
{
if(swt==2)
{
  // Keep reading from HC-05 and send to Arduino Serial Monitor
  if (BTSerial.available())
    Serial.write(BTSerial.read());

  // Keep reading from Arduino Serial Monitor and send to HC-05
  if (Serial.available())
    BTSerial.write(Serial.read());
}

if(swt==1)
{
      char tab[]={0};
      String chaine;
      String chaine1;
      int i=0;
     

          
      
      

             if (BTSerial.available())
              {  
                    while(BTSerial.available())
                    {
                    chaine=chaine+(char)BTSerial.read();
                    
                    }
                    chaine1=chaine;
                    chaine="Nom du module modifier en : "+chaine;
                    Serial.println(chaine);
                    
                   BTSerial.print(chaine);   
                   
              swt=0;
 
            }
          if(swt==0)
          {        digitalWrite(5, LOW);
                  Serial.println("attente"); 
                  delay(250);
                   BTSerial.begin(38400);
                  digitalWrite(6, HIGH);
                  Serial.println("change"); 
                  delay(250);
                 digitalWrite(5, HIGH);
                   delay(250);     
                  BTSerial.print("AT+NAME="+chaine1);
                  delay(500);
                 if (BTSerial.available())
                 {
                          Serial.write(BTSerial.read());
                          Serial.write(BTSerial.read());
                          Serial.write(BTSerial.read());
                  }
                  
                  delay(500);
                  digitalWrite(5, LOW);
                     digitalWrite(6, LOW);
                      delay(250);   
                      digitalWrite(5,HIGH);
                     BTSerial.begin(9600);
                     Serial.println("fini" );
          }  
}

}
