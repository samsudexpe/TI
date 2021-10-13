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
              
              delay(500);
                __asm__ __volatile__ ("jmp 0");
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
     

       
        
      
    }
  Serial.println("InitSD ");
 
  
}

/////////////////////////////////////////////////////////////////////////////////////////

void SDW(int swh,String chaine)//écriture dans la carte SD
{
float tension;
String chaine1;
  long i=0;
  pinMode(A6,INPUT);
analogReference(DEFAULT);
 delay(100);
  
  for(long c=0;c<=1000;c++)
    {
     i=i+analogRead(A6);
    }
  i=i/1000;

  tension = (i *0.019)-1.298;
  if(tension<0)
  {tension=0;}
  if(tension<=6)
  {


  chaine1="   | Pression:"+String(tension, 2)+" bars\n";
  }
  else
  {
     chaine1="  | Pression: NC\n";
   }
 initSD();
 
  
  myFile = SD.open("data.txt", FILE_WRITE);
  if (myFile) 
      {
        
        if(swh==1)//ouvert
        {
         
              chaine=chaine+" OUVERT"+chaine1;
         
        }
        else if(swh==2)//fermer
        {
          
             chaine=chaine+" FERMER"+chaine1;
          
        }
        else if(swh==3)
        {
        chaine="Traçabilité de l'irrigation :"+chaine+"\n";
        
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
