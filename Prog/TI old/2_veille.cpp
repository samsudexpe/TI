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
{  bl=0; 
  SPI.end();
 digitalWrite(5,LOW);//Tension de la Pin 5 mise à l'état bas (tension de 0V arrete la partie capteur)
   pinMode(5,INPUT); //Pin 5 configurer en entrée (pour éviter la consommation d'énergie pendant la veille )
   

  
   pinMode(4,INPUT); //Idem que pour la Pin 5
   pinMode(11,INPUT);//Idem que pour la Pin 5
   pinMode(13,INPUT);//Idem que pour la Pin 5
   pinMode(9,INPUT);//Idem que pour la Pin 5
   pinMode(10,INPUT);//Idem que pour la Pin 5
   pinMode(A4,INPUT);
   pinMode(A5,INPUT);
   pinMode(A7,INPUT);
   delay(100);
   attachInterrupt(0, Reveil, FALLING);//Permet de lier et configurer l'interruption externe 
                                       //à sa routine d'interruption sur un Front descendant(Falling)
                                       //pour la veille et le reveil
   attachInterrupt(1, BTH, FALLING);   //Idem mais pour l'activation du Bluetooth
                                       
   LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_OFF); //Met en veille le système puis le reveil
                                                        //uniquement par des interruptions externes
                                                  
  //Si le bluetooth n'est pas activé
   if(bl==0)
       {
      
        LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);
      
        Serial.println("OUVERTURE");//Affichage sur le PC
        //SPI.begin();
        detachInterrupt(0);//Désactivation de l'interruption externe Reveil
        detachInterrupt(1);//Désactivation de l'interruption externe ReveilBL
        
        digitalWrite(5,HIGH);//Tension de la Pin 5 mise à l'état haut (tension de 3.3V,alimentation des capteurs)
        delay(100); //Pause de 100ms

       
       }
  //
   else
       {
        //SPI.begin();
        detachInterrupt(0);//Désactivation de l'interruption externe Reveil
        detachInterrupt(1);//Désactivation de l'interruption externe ReveilBL
        
      
        digitalWrite(5,HIGH);//Tension de la Pin 5 mise à l'état haut (tension de 3.3V,alimentation des capteurs)
        delay(100); //Pause de 100ms
        RTC();
        bleuth();//Lance le sous programme pour lancer la trasmission en Bluetooth (onglet 4_sd.cpp)
           //Remet la variable d'activation du bluetooth à 0
        Serial.println("veille");
       // veilleF();//Relance le sous programme de mise en veille
       }
    
}


//Sous programme de mise en veille et de réveil lors de la fermeture de l'électrovanne
//Même fonctionnement que le sous programme d'avant ( veilleF() ), sauf l'interrutpiton "Reveil"
// qui se fait sur un front montant 
void veilleR(void) 
{ 
  bl=0;
  SPI.end();

    digitalWrite(5,LOW);//Tension de la Pin 5 mise à l'état bas (tension de 0V arrete la partie capteur)
   pinMode(5,INPUT); //Pin 5 configurer en entrée (pour éviter la consommation d'énergie pendant la veille )
   

  
   pinMode(4,INPUT); //Idem que pour la Pin 5
   pinMode(11,INPUT);//Idem que pour la Pin 5
   pinMode(13,INPUT);//Idem que pour la Pin 5
   pinMode(9,INPUT);//Idem que pour la Pin 5
   pinMode(10,INPUT);//Idem que pour la Pin 5
   pinMode(A4,INPUT);
   pinMode(A5,INPUT);
   pinMode(A7,INPUT);
   delay(100);
  
    attachInterrupt(0, Reveil, RISING);
    attachInterrupt(1, BTH, FALLING);    
    LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_OFF); 
  
  
   if(bl==0)
   {
    
    LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);
    Serial.println("FERMETURE");
   // SPI.begin();
    detachInterrupt(0);
    detachInterrupt(1);
    
   
    digitalWrite(5,HIGH);
    delay(100);
   
   }
   else
   {///SPI.begin();
    detachInterrupt(0);
    detachInterrupt(1);
   digitalWrite(5,HIGH);
    delay(100);
    RTC();
     bleuth();
    
    Serial.println("veille");
   // veilleR();
   }
     
}
