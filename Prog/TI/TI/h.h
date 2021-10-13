#include "LowPower.h"
#include <Wire.h>
#include "PCF85063TP.h"
#include <SPI.h>
#include <SD.h>
#include <RTClib.h>

void init1(void);
void veilleF(void);
void veilleR(void);
void wakeUp();
void rtcinit(void);
String RTC();
void SDRemove(void);
int SDR(String tension);
void SDW(int swh,String chaine);
void printfile(String chaine);
void bleuth(void);
String mesure(void);

void convV(float data);
void initSD( void);
