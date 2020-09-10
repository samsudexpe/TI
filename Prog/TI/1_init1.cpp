#include "h.h"

const int ReveilPin = 2;   //Renomage de la Pin 2 qui est associé à l'interruption externe pour la veille/reveil 
const int ReveilBLPin = 3; //Renomage de la Pin 3 qui est associé à l'interruption externe pour l'activation du bluetooth

///////////Initialisation du système/////////////

void init1(void) 
{   

    Serial.begin(9600);         //Initialisation du moniteur série permettant 
                                //l'affichage de données provenant du système vers le PC
                              
    //Dans ce système la Pin 5 permet d'alimenter ou non les capteurs
    pinMode(5,OUTPUT);          //Pin 5 configurer en sortie
    digitalWrite(5,HIGH);       //Tension de la Pin 5 mise à l'état haut (tension de 3.3V)
    
    pinMode(ReveilPin, INPUT);  //Configuration du réveil (Pin2) en entrée pour la veille/reveil 
    pinMode(ReveilBLPin, INPUT);//Configuration du réveil (Pin3) en entrée pour l'activation du bluetooth
   
    
}
