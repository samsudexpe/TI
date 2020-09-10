#include "h.h"

extern char date[35];
extern int idate;
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



  
