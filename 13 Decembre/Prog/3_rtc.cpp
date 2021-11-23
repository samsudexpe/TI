#include "h.h"


void bouclertc(void)
{




MiseM(2,0,1,1);
MiseM(1,0,1,1);

MiseM(2,0,2,2);
MiseM(1,0,2,2);

MiseM(2,0,3,3);
MiseM(1,0,3,3);

MiseM(2,0,4,4);
MiseM(1,0,4,4);

MiseM(2,0,5,5);
MiseM(1,0,5,5);

MiseM(2,0,6,6);
MiseM(1,0,6,6);

MiseM(2,0,7,7);
MiseM(1,0,7,7);





MiseM(2,0,8,1);
MiseM(1,0,8,1);

MiseM(2,0,9,2);
MiseM(1,0,9,2);

MiseM(2,1,0,3);
MiseM(1,1,0,3);

MiseM(2,1,1,4);
MiseM(1,1,1,4);

MiseM(2,1,2,5);
MiseM(1,1,2,5);

MiseM(2,1,3,6);
MiseM(1,1,3,6);

MiseM(2,1,4,7);
MiseM(1,1,4,7);





MiseM(2,1,5,1);
MiseM(1,1,5,1);

MiseM(2,1,6,2);
MiseM(1,1,6,2);

MiseM(2,1,7,3);
MiseM(1,1,7,3);

MiseM(2,1,8,4);
MiseM(1,1,8,4);

MiseM(2,1,9,5);
MiseM(1,1,9,5);

MiseM(2,2,0,6);
MiseM(1,2,0,6);

MiseM(2,2,1,7);
MiseM(1,2,1,7);




MiseM(2,2,2,1);
MiseM(1,2,2,1);

MiseM(2,2,3,2);
MiseM(1,2,3,2);

MiseM(2,2,4,3);
MiseM(1,2,4,3);

MiseM(2,2,5,4);
MiseM(1,2,5,4);

MiseM(2,2,6,5);
MiseM(1,2,6,5);

MiseM(2,2,7,6);
MiseM(1,2,7,6);

MiseM(2,2,8,7);
MiseM(1,2,8,7);






MiseM(2,2,9,1);
MiseM(1,2,9,1);

MiseM(2,3,0,2);
MiseM(1,3,0,2);





  Serial.println("");
}



void MiseM(int a, char p, char s, int j)
{
  String chaine;
  char jour[8][3]={"RRR","LUN","MAR","MER","JEU","VEN","SAM","DIM"};
  p=p+0x30;
  s=s+0x30;
if(a==2)
{ 
  chaine=chaine+"08:00:05 "+p+s+"/11/21 "+jour[j][0]+jour[j][1]+jour[j][2];
  
SDW(2,chaine);
}
if(a==1)
{ 
  chaine=chaine+"09:00:05 "+p+s+"/11/21 "+jour[j][0]+jour[j][1]+jour[j][2];
   
SDW(1,chaine);
} 



  
  
}
    
