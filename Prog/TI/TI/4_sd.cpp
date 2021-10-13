#include "h.h"
#include <SoftwareSerial.h>
//int i=0;
SoftwareSerial mySerial(9, 10); // RX, TX




//PCD85063TP RTclock;
File myFile;

extern float tension;

int a=0;
/////////////////////////////////////////////////////////////////

void bleuth(void)

{
  char co=NULL;
  char deco=NULL;
 
  mySerial.begin(9600);
 String tension=mesure();
 
    long o=0;
     mySerial.write("c_ok");
     mySerial.println();
    while(co!=0x24)
        {  
          
           co=mySerial.read();
           o++;
           if(o==(232000*30))
           { 
             Serial.println("no co,veille");  
             delay(100);
             o=0;
             return 0;
             }
         }

       
    Serial.println(co);
   Serial.println("co ok");
    
  
  int i=SDR(tension);
  mySerial.println();
  mySerial.write("eff SD ?");
  mySerial.println();
        
    if(i==0)
    {
          while(deco!=0x26 || deco!=0x7E )
          {
           deco=mySerial.read();
           if(deco==0x26)
             {
              mySerial.write("SD eff");
              SDRemove(); 
              Serial.println("eff ok");
              // mySerial.write("SD eff");
              delay(500);
              return(0);
             }
           if(deco==0x7E)
             {
              mySerial.write("SD save");
              delay(500);
              return(0);
             }
           }
    }
         
         
}
       
    




/////////////////////////////////////////////////////////////////////////////////////////////////////

void initSD( void)
{

  if(!SD.begin(4))
    {
     
      Serial.println("EchecSD");
      digitalWrite(5,LOW);
      SD.end();
      delay(100);
      digitalWrite(5,HIGH);
      delay(100);
     
      if(a==5)
      {
         Serial.println("Echec,veille");
        return 0;
      }

       
        
      
    }
  Serial.println("InitSD ");
  return 0;
  
}

/////////////////////////////////////////////////////////////////////////////////////////

void SDW(int swh,String chaine)//écriture dans la carte SD
{
 initSD();
 
  
  myFile = SD.open("data.txt", FILE_WRITE);
  if (myFile) 
      {
        
        if(swh==1)//ouvert
        {
          chaine=chaine+" OUVERT\n";
            
        }
        else if(swh==2)//fermer
        {
          chaine=chaine+" FERMER\n";
           
        }
        else if(swh==3)
        {
        chaine=chaine+"Traçabiliter de l'irrigation :\n";
        
        }
        printfile(chaine);
        Serial.println("sauvegarde");
        myFile.close();
       
      }
  else 
      {
       Serial.println("no save");
      }
      
  delay(100);
  SD.end();
  
}

////////////////////////////////////////////////////////////////////////////////////////////////

int SDR(String tension)//lecture del a carte SD et envoie en Bluetooth
{ 
  int len;
  initSD();
  myFile = SD.open("data.txt");
  if (myFile) 
    {
      Serial.println("envoi");
  
      while (myFile.available())
        {
          mySerial.write(myFile.read());
        }

      len=tension.length();
    for(int i=0;i<=len-1;i++)
    {
       mySerial.write(tension[i]);
    }
        
     
      mySerial.write("V");
      mySerial.write("\r");
      mySerial.write("\n");
      myFile.close();
      delay(100);
      SD.end();
      return 0;
    } 
  else 
    {
      Serial.println("no envoi");
     /* tension="aucun fichier\n"+tension;
        len=tension.length();
       
    for(int i=0;i<=len-1;i++)
    {
       mySerial.write(tension[i]);
    }
       mySerial.write("V");
      mySerial.write("\r");
      mySerial.write("\n");
      */
      
      
      SD.end();
      delay(100);
      return 1;
    }
  
  
}

/////////////////////////////////////////////////////////////////////////////////////

void SDRemove(void)//efface se que contient la carte SD
{
  initSD();
  SD.remove("data.txt") ;
}

void printfile(String chaine)
{
  int len=chaine.length();
  for(int i=0;i<=len-1;i++)
    {
      myFile.print(chaine[i]);
    }
 // myFile.print(chaine);

}
