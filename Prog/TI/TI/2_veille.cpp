#include "h.h"

int bl=0; //Déclaration d'une variable qui stocke l'information "bluetooth est activé ou pas"
extern int a;

//Routine d'interruption pour la veille et le reveil
//Lancement de la routine d'interruption déclancher par le capteur de pression TOR
void Reveil()
{
    Serial.println(" ivé");
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
   digitalWrite(5,LOW);//Tension de la Pin 5 mise à l'état bas (tension de 0V arrete la partie capteur)
   pinMode(5,INPUT); //Pin 5 configurer en entrée (pour éviter la consommation d'énergie pendant la veille )
   
   // Les Pins 4 ,11 et 13 sont utilisées pour communiquer avec la carte SD
   pinMode(4,INPUT); //Idem que pour la Pin 5
   pinMode(11,INPUT);//Idem que pour la Pin 5
   pinMode(13,INPUT);//Idem que pour la Pin 5
   // pinMode(9,INPUT);//Idem que pour la Pin 5
   //pinMode(10,INPUT);//Idem que pour la Pin 5
   pinMode(A4,INPUT);
   pinMode(A5,INPUT);
   delay(100);
   attachInterrupt(0, Reveil, FALLING);//Permet de lier et configurer l'interruption externe 
                                       //à sa routine d'interruption sur un Front descendant(Falling)
                                       //pour la veille et le reveil
   attachInterrupt(1, BTH, FALLING);   //Idem mais pour l'activation du Bluetooth
                                       
   LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_OFF); //Met en veille le système puis le reveil
                                                        //uniquement par des interruptions externes
    a=0;                                                  
  //Si le bluetooth n'est pas activé
   if(bl==0)
       {
       // pinMode(2,OUTPUT);
      //  LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);
      //  LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);
       // pinMode(2,INPUT);
        Serial.println("ouverture");//Affichage sur le PC
        
        detachInterrupt(0);//Désactivation de l'interruption externe Reveil
        detachInterrupt(1);//Désactivation de l'interruption externe ReveilBL
        
        pinMode(5,OUTPUT); //Pin 5 configurer en sortie
        digitalWrite(5,HIGH);//Tension de la Pin 5 mise à l'état haut (tension de 3.3V,alimentation des capteurs)
        delay(100); //Pause de 100ms

        //Configure les Pins 4,11 et 13 en sortie pour communiquer avec la carte SD
        pinMode(4,OUTPUT);
        pinMode(11,OUTPUT);
        pinMode(13,OUTPUT);
       //  pinMode(9,OUTPUT);
       // pinMode(10,OUTPUT);
       }
  //
   else
       {
        detachInterrupt(0);//Désactivation de l'interruption externe Reveil
        detachInterrupt(1);//Désactivation de l'interruption externe ReveilBL
        
        pinMode(5,OUTPUT); //Pin 5 configurer en sortie
        digitalWrite(5,HIGH);//Tension de la Pin 5 mise à l'état haut (tension de 3.3V,alimentation des capteurs)
        delay(100); //Pause de 100ms

        //Configure les Pins 4,11 et 13 en sortie pour communiquer avec la carte SD
        pinMode(4,OUTPUT);
        pinMode(11,OUTPUT);
        pinMode(13,OUTPUT);
       // pinMode(9,OUTPUT);
       // pinMode(10,OUTPUT);
       // mesure();
        bleuth();//Lance le sous programme pour lancer la trasmission en Bluetooth (onglet 4_sd.cpp)
        bl=0;    //Remet la variable d'activation du bluetooth à 0
        Serial.println("veille");
        veilleF();//Relance le sous programme de mise en veille
       }
    
}


//Sous programme de mise en veille et de réveil lors de la fermeture de l'électrovanne
//Même fonctionnement que le sous programme d'avant ( veilleF() ), sauf l'interrutpiton "Reveil"
// qui se fait sur un front montant 
void veilleR(void) 
{
   digitalWrite(5,LOW);
   pinMode(5,INPUT);
   pinMode(4,INPUT);
   pinMode(11,INPUT);
   pinMode(13,INPUT);
   // pinMode(9,INPUT);//Idem que pour la Pin 5
   //pinMode(10,INPUT);//Idem que pour la Pin 5
   pinMode(A4,INPUT);
   pinMode(A5,INPUT);
  delay(100);
  //all_in();
    attachInterrupt(0, Reveil, RISING);
    attachInterrupt(1, BTH, FALLING);    
    LowPower.powerDown(SLEEP_FOREVER, ADC_OFF, BOD_OFF); 
  
   a=0;
   if(bl==0)
   {
    //pinMode(2,OUTPUT);
   // LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);
  //  LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);
   // pinMode(2,INPUT);
    Serial.println("fermeture");
    detachInterrupt(0);
    detachInterrupt(1);
    
    pinMode(5,OUTPUT); 
    digitalWrite(5,HIGH);
    delay(100);
    pinMode(4,OUTPUT);
    pinMode(11,OUTPUT);
    pinMode(13,OUTPUT);
   //pinMode(9,OUTPUT);
    // pinMode(10,OUTPUT);
   }
   else
   {
    detachInterrupt(0);
    detachInterrupt(1);
    pinMode(5,OUTPUT); 
    digitalWrite(5,HIGH);
    delay(100);
    pinMode(4,OUTPUT);
    pinMode(11,OUTPUT);
    pinMode(13,OUTPUT);
    //pinMode(9,OUTPUT);
    //pinMode(10,OUTPUT);
   // mesure();
    bleuth();
    bl=0;
    Serial.println("veille");
    veilleR();
   }
     
}
