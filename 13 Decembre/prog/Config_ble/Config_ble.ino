#include <SoftwareSerial.h>

SoftwareSerial BTSerial(9, 10); // RX | TX

void setup()
{
  pinMode(5,OUTPUT);          //Pin 5 configurer en sortie
  digitalWrite(5,HIGH);       //Tension de la Pin 5 mise à l'état haut (tension de 3.3V)
  pinMode(6, OUTPUT);  // this pin will pull the HC-05 pin 34 (key pin) HIGH to switch module to AT mode
  digitalWrite(6, HIGH);
  Serial.begin(9600);

   Serial.println("AT Commande : AT                    | Reponse : OK                      | Vérifie si le module répond bien");
   Serial.println("AT Commande : AT+NAME?              | Reponse : +NAME:nom du module OK  | Obtenir le nom du module ");
   Serial.println("AT Commande : AT+NAME=nom du module | Reponse : OK                      | Change le nom du module");
   Serial.println("AT Commande : AT+PSWD?              | Reponse : +PSWD:mot de passe  OK  | Obtenir le mot de passe");
   Serial.println("AT Commande : AT+PSWD=mot de passe  | Reponse : OK                      | Change le mot de passe");
  //Serial.println("Enter AT commands:");
  BTSerial.begin(38400);  // HC-05 default speed in AT command more
  delay(1000);
  //BTSerial.println("AT+NAME=12345678bl");
}

void loop()
{
char c;
  // Keep reading from HC-05 and send to Arduino Serial Monitor
  if (BTSerial.available())
    Serial.write(BTSerial.read());

  // Keep reading from Arduino Serial Monitor and send to HC-05
  if (Serial.available())
    BTSerial.write(Serial.read());
    
}
