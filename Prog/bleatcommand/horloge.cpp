#include "h.h"

char date[35];
int idate=0;

RTC_PCF8523 rtc;



char dateV[5];

////////////////////////////////////////////////////////////////////////////

void conv(int data)// convertie les données brut en données affichable sur un PC ou un fichier
{
  int tab[2];
  tab[0]=(data/10);
  tab[1]=(data-(tab[0]*10));

  date[idate]=tab[0]+0x30;
  idate++;
  date[idate]=tab[1]+0x30;
  idate++;
}

//////////////////////Sous programme pour Initialiser l'horloge/////////////////////////////


void rtcinit(void)
  {
        if(! rtc.begin())
            {
             Serial.println("RTC non trouvé");
            }
        rtc.start();
        rtc.adjust(DateTime(F(__DATE__), F(__TIME__))); //A décommenter pour ajuster l'heure de l'horloge
  }






/////////////Sous Programme pour l'horloge//////////////////////
  
void RTC()
{ 
    rtcinit();// Initialise L'horloge
    idate=0;

    DateTime now = rtc.now(); //Récuperation de l'information dans le module horloge
  
    ////heure
    
    conv(now.hour());
     
    date[idate]=0x3A;   //":"
    idate++;

    ////minute
    conv(now.minute());
    
    date[idate]=0x3A;   //":"
    idate++;

    ////seconde
    conv(now.second());
       
    date[idate]=0x20;   //" "
    idate++;


    ////jour
    conv(now.day());
    
    date[idate]=0x2F;   //"/"
    idate++;

    ////mois
    conv(now.month());
        
    date[idate]=0x2F;   //"/"
    idate++;
   
    date[idate]=0x32;   //"2"
    idate++;
    date[idate]=0x30;   //"0"
    idate++;


    ////année    
    conv(now.year()-2000);
      
    date[idate]=0x20;   //" "
    idate++;
    
    ////jour de la semaine
    switch (now.dayOfTheWeek()) { // Friendly printout the weekday
        case 1:
           
            date[idate]=0x4C;   //"L"
            idate++;
            date[idate]=0x55;   //"U"
            idate++;
            date[idate]=0x4E;   //"N"
            idate++;
            break;
        case 2:
           
            date[idate]=0x4D;   //"M"
            idate++;
            date[idate]=0x41;   //"A"
            idate++;
            date[idate]=0x52;   //"R"
            idate++;
            break;
        case 3:
            
            date[idate]=0x4D;   //"M"
            idate++;
            date[idate]=0x45;   //"E"
            idate++;
            date[idate]=0x52;   //"R"
            idate++;
            break;
        case 4:
            
            date[idate]=0x4A;   //"J"
            idate++;
            date[idate]=0x45;   //"E"
            idate++;
            date[idate]=0x55;   //"U"
            idate++;
            break;
        case 5:
            
            date[idate]=0x56;   //"V"
            idate++;
            date[idate]=0x45;   //"E"
            idate++;
            date[idate]=0x4E;   //"N"
            idate++;
            break;
        case 6:
            
            date[idate]=0x53;   //"S"
            idate++;
            date[idate]=0x41;   //"A"
            idate++;
            date[idate]=0x4D;   //"M"
            idate++;
            break;
        case 7:
            
            date[idate]=0x44;   //"D"
            idate++;
            date[idate]=0x49;   //"I"
            idate++;
            date[idate]=0x4D;   //"M"
            idate++;
            break;
    }


   //Affiche sur le PC la date compléte: HH:MM:SS JJ/MM/AA JJJ 
   Serial.print("Initialisation de l'horloge : ");
   for(int i=0;i<=idate;i++)
     {
      Serial.print(date[i]);
     }
   Serial.println();
  
}


    
