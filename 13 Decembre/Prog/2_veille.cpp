#include "h.h"

int bl=0; //Déclaration d'une variable qui stocke l'information "bluetooth est activé ou pas"


//Routine d'interruption pour la veille et le reveil
//Lancement de la routine d'interruption déclancher par le capteur de pression TOR
void Reveil()
{
    
}

//Routine d'interruption pour l'activation du bluetooth
//Lancement de la routine d'interruption déclancher par le bouton poussoir pour activer le Bluetooth
void BTH()
{
    bl=1; // Change la valeur stocker de la variable "bl" à 1 ( Le bluetooth est activé)
    Serial.println("BLE activé");
    //mesure();
}



//Sous programme de mise en veille et de réveil lors de l'ouverture de l'électrovanne
void veilleF(void) 
{  
  Serial.println("veille");
  digitalWrite(5,LOW);//Tension de la Pin 5 mise à l'état bas (tension de 0V arrete la partie capteur)
  pinMode(5,INPUT); //Pin 5 configurer en entrée (pour éviter la consommation d'énergie pendant la veille )
   
 
  delay(100);
  
  attachInterrupt(1, BTH, FALLING);   //Idem mais pour l'activation du Bluetooth
  
  LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_OFF); //Met en veille le système puis le reveil
  
  detachInterrupt(1);//Désactivation de l'interruption externe ReveilBL
  
  pinMode(5,OUTPUT);
  digitalWrite(5,HIGH);//Tension de la Pin 5 mise à l'état haut (tension de 3.3V,alimentation des capteurs)
       
  
}
