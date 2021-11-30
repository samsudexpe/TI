#include <SoftwareSerial.h>

SoftwareSerial BTSerial(9, 10); // RX | TX

void setup()
{
char c1[20];
int i=0;
  pinMode(5,OUTPUT);          //Pin 5 configurer en sortie
  digitalWrite(5,HIGH);       //Tension de la Pin 5 mise à l'état haut (tension de 3.3V)
  pinMode(6, OUTPUT);  // this pin will pull the HC-05 pin 34 (key pin) HIGH to switch module to AT mode
  digitalWrite(6, HIGH);
  Serial.begin(9600);
  BTSerial.begin(38400);  // HC-05 default speed in AT command more
  delay(1000);
  BTSerial.println("AT+NAME?");

  while(i<1)
      {
          while(BTSerial.available())
        {
          c1[i]=BTSerial.read();
       
          i++;
        }
      }

  delay(100);
  digitalWrite(5,LOW); 
  delay(100);
  digitalWrite(5,HIGH);       //Tension de la Pin 5 mise à l'état haut (tension de 3.3V)
  pinMode(6, OUTPUT);  // this pin will pull the HC-05 pin 34 (key pin) HIGH to switch module to AT mode
  digitalWrite(6, LOW);
 
  BTSerial.begin(9600);  // HC-05 default speed in AT command more
  delay(1000);
  Serial.print("Connecter le smartphone au module BLE :");
  for(int a=6;a<19;a++)
  {
    Serial.print(c1[a]);
    if(c1[a]==0x0A)
      {
        a=20;
      }
  }
 Serial.println();
}



void loop()
{
char c;
  // Détecte lorsque une infomation arrive du module BLE et l'écrit dans le moniteur série
  if (BTSerial.available())
  {
    Serial.print("Message reçu : ");
    while(BTSerial.available())
      {
        Serial.write(BTSerial.read());
      }
    Serial.println();
  }

  
  // Détecte lorsque l'utilisateur appuie sur "Entrée" dans le moniteur série et envoi le message écrit au module BLE
  if (Serial.available())
  {
    
    Serial.print("Message envoyé : ");
    while(Serial.available())
      {
       c=Serial.read();
       BTSerial.write(c);
       Serial.print(c);
      }
    Serial.println();
  }
    
}
