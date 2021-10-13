#include "h.h"

//////////////////////////////////////////////////////////////////////


void setup()//Une seul exectution lors de l'alimentation
{
  
  init1();//Sous programme d'initialisation (onglet 1_init.cpp)
  
  Serial.println("Initok"); //Affiche sur le PC 
  delay(100); // Pause de 100ms
}



/////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

void loop() //Executer après le setup(), répéter en boucle
{
  String chaine;
  Serial.println("veille");
  veilleF();//Sous programme de mise en veille puis reveil lors de l'ouverture (onglet 2_veille.cpp)
            //de l'électrovanne (sur front descendant)

 // chaine=RTC();    //Sous programme de lecture de l'horloge (onglet 3_rtc.cpp)
  //SDW(1,chaine);   //Sous programme d' ecriture dans la carte SD ( SDW(1) dans le cas d'une ouverture) (onglet 4_sd.cpp)
  
  Serial.println("veille");
  veilleR();//Sous programme de mise en veille puis reveil lors de la fermeture (onglet 2_veille.cpp)
            //de l'électrovanne (sur front montant)

 // chaine=RTC();    //Sous programme de lecture de l'horloge (onglet 3_rtc.cpp)
// SDW(2,chaine);   //Sous programme d' ecriture dans la carte SD ( SDW(2) dans le cas d'une fermeture) (onglet 4_sd.cpp)
  
}
