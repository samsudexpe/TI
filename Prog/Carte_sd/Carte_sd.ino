
#include <SPI.h>
#include <SD.h>

File myFile;

void setup() {
  // Open serial communications and wait for port to open:
   pinMode(5,OUTPUT);          //Pin 5 configurer en sortie
    digitalWrite(5,HIGH);       //Tension de la Pin 5 mise à l'état haut (tension de 3.3V)
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }


  Serial.print("Initialisation de la carte SD...");

  if (!SD.begin(4)) {
    Serial.println("Echec!");
    while (1);
  }
  Serial.println("Initialisation réussi");

  // open the file. note that only one file can be open at a time,
  // so you have to close this one before opening another.
  myFile = SD.open("test.txt", FILE_WRITE);

  // if the file opened okay, write to it:
  if (myFile) {
    Serial.print("Ecriture dans test.txt...");
    myFile.println("test 1, 2, 3.");
    // close the file:
    myFile.close();
    Serial.println("OK.");
  } else {
    // if the file didn't open, print an error:
    Serial.println("erreur ouverture test.txt");
  }

  // re-open the file for reading:
  myFile = SD.open("test.txt");
  if (myFile) {
    Serial.println("test.txt:");

    // read from the file until there's nothing else in it:
    while (myFile.available()) {
      Serial.write(myFile.read());
    }
    // close the file:
    myFile.close();
  } else {
    // if the file didn't open, print an error:
    Serial.println("erreur ouverture test.txt");
  }
}

void loop() {
  // nothing happens after setup
}
