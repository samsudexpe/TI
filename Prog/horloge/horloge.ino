

#include <RTClib.h>
RTC_PCF8523 rtc;


//////////////////////Sous programme pour Initialiser l'horloge/////////////////////////////


void setup(void)
  {
     pinMode(5,OUTPUT);          //Pin 5 configurer en sortie
    digitalWrite(5,HIGH);       //Tension de la Pin 5 mise à l'état haut (tension de 3.3V)
    Serial.begin(9600);
    delay(200);
        if(! rtc.begin())
            {
             Serial.println("noRTC");
            }
        rtc.start();
        rtc.adjust(DateTime(F(__DATE__), F(__TIME__))); //A décommenter pour ajuster l'heure de l'horloge
  }






/////////////Sous Programme pour l'horloge//////////////////////
  
void loop ()
{ 
   
    String chaine;


    DateTime now = rtc.now(); //Récuperation de l'information dans le module horloge
    
    ////heure
    if(now.hour()<10)
    {
      chaine=chaine+"0"+now.hour()+":" ;
    }
    else
    {
    chaine=chaine+now.hour()+":";
    }
    ////minute
    if(now.minute()<10)
    {
      chaine=chaine+"0"+now.minute()+":"; 
    }
    else
    {
    chaine=chaine+now.minute()+":";
}
    ////seconde
  if(now.second()<10)
    {
      chaine=chaine+"0"+now.second()+" "; 
    }
    else
    {
    chaine=chaine+now.second()+" ";
    }
    ////jour
 if(now.day()<10)
    {
      chaine=chaine+"0"+now.day()+"/"; 
    }
    else
    {
    chaine=chaine+now.day()+"/";
}
    ////mois
   if(now.month()<10)
    {
      chaine=chaine+"0"+now.month()+"/"; 
    }
    else
    {
    chaine=chaine+now.month()+"/";       
  }
    ////année    
   
   chaine=chaine+(now.year()-2000)+" ";

   
    ////jour de la semaine
    switch (now.dayOfTheWeek()) { // Friendly printout the weekday
        case 1:
           chaine=chaine+"LUN";
            
            break;
        case 2:
            chaine=chaine+"MAR";
            
            break;
        case 3:
             chaine=chaine+"MER";
           
            break;
        case 4:
             chaine=chaine+"JEU";
            
            break;
        case 5:
             chaine=chaine+"VEN";
           
            break;
        case 6:
             chaine=chaine+"SAM";
           
            break;
        case 7:
             chaine=chaine+"DIM";
            
            break;
    }


   //Affiche sur le PC la date compléte: HH:MM:SS JJ/MM/AA JJJ 
   
   Serial.println(chaine);
   delay(3000);

}


    
