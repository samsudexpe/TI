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
    
        do{  
          if(mySerial.available()>0)
          {
           co=mySerial.read();
           
            Serial.println(co);
           
           
           
           
          }
           o++;
           if(o==(232000*30))
           { 
             Serial.println("no co,veille");  
             delay(100);
             o=0;
             return 0;
             }
           
         }while(co!=0x24 && co!=0x23 );

       
   o=0;

    if(co==0x24)
    {
   Serial.println("co ok");
    
  mySerial.write("Envoi Data :");
   mySerial.println();
  int i=SDR(tension);
  mySerial.println();
  mySerial.write("eff SD ?& ou Neff SD ?~");
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
              if(deco==0x23)//Renommer le module ble
             {
              mySerial.write("SD save");
              delay(500);
             return(0);
             }
             
           }
    }
    }
    if(co==0x23)
    {
       char name1[10]={0,0,0,0,0,0,0,0,0,0};
       char name2[20];
       name2[0]=0x41;
       name2[1]=0x54;
       name2[2]=0x2B;
       name2[3]=0x4E;
       name2[4]=0x41;
       name2[5]=0x4D;
       name2[6]=0x45;
       name2[7]=0x3D;
      
       String chaine;
       int iname1=0;
       mySerial.write("Renommer le module Bluetooth (10 caracteres max) :");
        do
        {
        if(mySerial.available()>0)
          {
            name1[iname1]=mySerial.read();
            Serial.print(name1[iname1]);
            iname1++;
           }
          
        }while(name1[iname1-1]!=0x7E);
        
        mySerial.write("Module Bluetooth renommer par : ");
        mySerial.write(name1);
        name1[iname1-1]=0;
        
        
        for(int i=0;i<=iname1;i++)
        {
         
          name2[8+i]=name1[i+2];
          if(name2[8+i]==0x7E)
          {
            name2[8+i]=0;
            name2[9+i]=0;
            i=30;
          }
          
          
        }



        Serial.println("");
        Serial.println(name2);
        
        delay(500);
        digitalWrite(5, LOW);
        Serial.println("attente"); 
        delay(100);


 
 pinMode(5,OUTPUT);          //Pin 5 configurer en sortie
    digitalWrite(5,HIGH);       //Tension de la Pin 5 mise à l'état haut (tension de 3.3V)
  pinMode(6, OUTPUT);  // this pin will pull the HC-05 pin 34 (key pin) HIGH to switch module to AT mode
  digitalWrite(6, HIGH);
 
         
        mySerial.begin(38400);
      
        
       
    delay(1000);
       
      
        mySerial.println(name2);
     
       do{
        if (mySerial.available())
           {
              co=mySerial.read();
              Serial.print(co);
           }
         }while(co!=0x4B);        
         delay(500);
         digitalWrite(5, LOW);
         digitalWrite(6, LOW);
         delay(250);   
         digitalWrite(5,HIGH);
         mySerial.begin(9600);
         Serial.begin(9600);
         Serial.println("fini" );



        
        
      
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
int tension;
int tension1;
String chaine1;
  long i=0;
 
 
 if(swh==1)
{
  tension = 1;
  tension1 = random(80,99);
  chaine=chaine+" OUVERT | Pression : "+String(tension, 2)+"."+String(tension1, 10)+" bars";
    
      
}
if(swh==2)
{
  tension = 0;
  tension1 = random(60,75);
  chaine=chaine+" FERMER | Pression : "+String(tension, 2)+"."+String(tension1, 10)+" bars";
   
       
} 
 if(swh==3)
{
 chaine="Traçabilité de l'irrigation :"+chaine+"\n";
}
 

   
 initSD();
 
  
  myFile = SD.open("data.txt", FILE_WRITE);
  if (myFile) 
      {
      
       
        int len=chaine.length();
  for(int i=0;i<=len-1;i++)
    {
      myFile.print(chaine[i]);
      Serial.print(chaine[i]);
      
    }
    myFile.print("\r\n");
   
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
         //Serial.write(myFile.read());
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
      Serial.print(chaine[i]);
        
    }
 // myFile.print(chaine);

}
