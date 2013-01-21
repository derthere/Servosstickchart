

/*#include "Tlc5940.h"
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
*/

#include <Servo.h> 
int places_in[5];
int serInIndx = 0;

  Servo myservo1;
  Servo myservo2;
  Servo myservo3;
  Servo myservo4;
  Servo myservo5;
  Servo myservo6;

void setup()
{
 // tlc_initServos();
myservo1.attach(3); 
myservo2.attach(5); 
myservo3.attach(6);
myservo4.attach(9); 
myservo5.attach(10); 
myservo6.attach(11); 

  Serial.begin(9600);

for(int n=0; n<5; n++){
     places_in [n] = 0; 
}
}

void loop()
{
  readSerialString();
  delay(500);
  /*
   for(int pos = 90; pos < 180; pos += 1)  // goes from 0 degrees to 180 degrees 
  {                                  // in steps of 1 degree 
  
   myservo1.write(pos);
  myservo2.write(pos);
  myservo3.write(pos);
  myservo4.write(pos);
  myservo5.write(pos);
  myservo6.write(pos);
  } 
  */
  myservo1.write(places_in[0]);
  myservo2.write(places_in[1]);
  myservo3.write(places_in[2]);
  myservo4.write(places_in[0]);
  myservo5.write(places_in[1]);
  myservo6.write(places_in[2]);
 //delay(200);
 
 
/*tlc_setServo(SERVO_CHANNEL1, places_in[0]);
tlc_setServo(SERVO_CHANNEL8, places_in[0]);
tlc_setServo(SERVO_CHANNEL3, places_in[0]);
tlc_setServo(SERVO_CHANNEL4, places_in[0]);
tlc_setServo(SERVO_CHANNEL5, places_in[0]);
tlc_setServo(SERVO_CHANNEL6, places_in[0]);
tlc_setServo(SERVO_CHANNEL7, places_in[0]);
 Tlc.update();
 */

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

