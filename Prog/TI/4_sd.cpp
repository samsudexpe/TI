#include "h.h"
#include <SoftwareSerial.h>
int i=0;
SoftwareSerial mySerial(9, 10); // RX, TX




//PCD85063TP RTclock;
File myFile;
extern int idate;
extern char date[35];
extern float tension;

/////////////////////////////////////////////////////////////////

void bleuth(void)

{
  char co=NULL;
  char deco=NULL;
  
  mySerial.begin(9600);
  initSD();
  myFile = SD.open("data.txt", FILE_WRITE);
  if (myFile) 
    {
      myFile.print(tension);
      myFile.close();
    }
  else 
    {
      Serial.println("erreur ouverture data.txt");
    }
  delay(100);
  SD.end();

    
    
     mySerial.write("connection_ok");
     mySerial.println();
    while(co!=0x24)
        {  
          
           co=mySerial.read();
           
        }
   Serial.println("connection ok");
    
  
 
  SDR();
  mySerial.println();
  mySerial.write("effacer mémoire SD ?");
  mySerial.println();
        
    
          while(deco!=0x26 || deco!=0x7E )
          {
           deco=mySerial.read();
           if(deco==0x26)
             {
              mySerial.write("Eff");
              SDRemove(); 
              Serial.println("effacement ok");
              return(0);
             }
           if(deco==0x7E)
             {
              mySerial.write("noEff");
              delay(500);
              return(0);
             }
           }

          }
        
       
    




/////////////////////////////////////////////////////////////////////////////////////////////////////

void initSD( void)
{

  if(!SD.begin(4))
    {
      Serial.println("échec de l'initialisation de la carte SD");
      digitalWrite(5,LOW);
      delay(100);
      digitalWrite(5,HIGH);
      delay(100);
      initSD();
    }
  Serial.println("initialisation de la carte SD réussie");
  
}

/////////////////////////////////////////////////////////////////////////////////////////

void SDW(int swh)//écriture dans la carte SD
{
  initSD();
  myFile = SD.open("data.txt", FILE_WRITE);
  if (myFile) 
      {
        
        if(swh==1)//ouvert
        {
            date[idate]=0x20;   //" "
            idate++;
            date[idate]=0x4F;   //"O"
            idate++;
            date[idate]=0x55;   //"U"
            idate++;
            date[idate]=0x56;   //"V"
            idate++;
            date[idate]=0x45;   //"E"
            idate++;
            date[idate]=0x52;   //"R"
            idate++;
            date[idate]=0x54;   //"T"
            idate++;
            date[idate]=0x0D;   //"\r"
            idate++;
            date[idate]=0x0A;   //"\n"
            idate++;
        }
        else if(swh==2)//fermer
        {
            date[idate]=0x20;   //" "
            idate++;
            date[idate]=0x46;   //"F"
            idate++;
            date[idate]=0x45;   //"E"
            idate++;
            date[idate]=0x52;   //"R"
            idate++;
            date[idate]=0x4D;   //"M"
            idate++;
            date[idate]=0x45;   //"E"
            idate++;
            date[idate]=0x52;   //"R"
            idate++;
            date[idate]=0x0D;   //"\r"
            idate++;
            date[idate]=0x0A;   //"\n"
            idate++;
        }
        
        printfile();
        myFile.close();
       
      }
  else 
      {
       Serial.println("erreur ouverture data.txt");
      }
      
  delay(100);
  SD.end();
  
}

////////////////////////////////////////////////////////////////////////////////////////////////

void SDR(void)//lecture del a carte SD et envoie en Bluetooth
{
  initSD();
  myFile = SD.open("data.txt");
  if (myFile) 
    {
      Serial.println("data.txt:");
  
      while (myFile.available())
        {
          mySerial.write(myFile.read());
        }
      
      myFile.close();
      delay(100);
    } 
  else 
    {
      Serial.println("erreur ouverture data.txt");
    }
  SD.end();
}

/////////////////////////////////////////////////////////////////////////////////////

void SDRemove(void)//efface se que contient la carte SD
{
  initSD();
  SD.remove("data.txt") ;
}

void printfile(void)
{
  
   for(int i=0;i<=idate;i++)
    {
      myFile.print(date[i]);
    }
   

}
