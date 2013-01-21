
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

int angle1;
int angle2;
int angle3;

#define DELAY_TIME      20


char place[] = "0000000";
byte incomingData;

void setup()
{
  tlc_initServos();  // Note: this will drop the PWM freqency down to 50Hz.
`Serial.begin(9600);

}

void loop()
{
 if(Serial.available(){
    incomingData= Serial.read();
    
    
  }

  
  while (Serial.available()>0) {
   for (int i=0; i<10; i++) {
      buff[i]=buff[i+1];
    }
    buff[i]=Serial.read();
    if (buff[0]=='n') {
      angle1=int(buff[1]);
    }
    if (buff[10]=='g') {
      angle2=int(buff[9]);
    }
    if (buff[10]=='o') {
      angle3=int(buff[9]);
    }
    
    tlc_setServo(SERVO_CHANNEL, angle);
    Tlc.update();
   
    delay(DELAY_TIME);
 
}

