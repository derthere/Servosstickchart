int tenPin = 10;
int ninePin = 9;
int asd= 11;
int places_in[5];
int serInIndx = 0;
#include "Tlc5940.h"
#include "tlc_servos.h"


#define SERVO_CHANNEL1   1
#define SERVO_CHANNEL3   3
#define SERVO_CHANNEL4   4
#define SERVO_CHANNEL5   5
#define SERVO_CHANNEL6   6
#define SERVO_CHANNEL7   7
#define SERVO_CHANNEL8   8
#define SERVO_CHANNEL9   9
#define SERVO_CHANNEL10   10
#define SERVO_CHANNEL11   11
#define SERVO_CHANNEL12   12
#define SERVO_CHANNEL13   13

void setup()
{
  tlc_initServos();
//  pinMode(ninePin, OUTPUT);
//  pinMode(tenPin, OUTPUT);
//  pinMode(asd, OUTPUT);
  Serial.begin(9600);
  //analogWrite(ninePin, 0);
//  analogWrite(tenPin, 0);
for(int n=0; n<5; n++){
     places_in [n] = 0; 
}
}

void loop()
{
  readSerialString();
tlc_setServo(SERVO_CHANNEL1, places_in[0]);
tlc_setServo(SERVO_CHANNEL8, places_in[0]);
tlc_setServo(SERVO_CHANNEL3, places_in[0]);
tlc_setServo(SERVO_CHANNEL4, places_in[0]);
tlc_setServo(SERVO_CHANNEL5, places_in[0]);
tlc_setServo(SERVO_CHANNEL6, places_in[0]);
tlc_setServo(SERVO_CHANNEL7, places_in[0]);

 // analogWrite(tenPin, places_in[0]);
   //analogWrite(ninePin, places_in[1]);
}

void readSerialString () {
    int sb;   
    if(Serial.available()) { 
       //Serial.print("reading Serial String: ");     //optional confirmation
       while (Serial.available()){ 
          sb = Serial.read();             
          places_in[serInIndx] = sb;
          serInIndx++;
          //serialWrite(sb);                        //optional confirmation
       }
       //Serial.println();
    }  
}

