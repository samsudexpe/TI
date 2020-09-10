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
void RTC();
void SDRemove(void);
void SDR(void);
void SDW(int swh);
void printfile(void);
void conv(int data);
void bleuth(void);
void all_in(void);
void mesure(void);
void printfileV(void);
void convV(float data);
void initSD( void);
