//Library include
#include <CheapStepper.h>

//Makro defines

//Motor rotation
#define CLOCKWISE      1
#define ANTI_CLOCKWISE 0

//Motor movement status
#define PAUSE 0
#define RIGHT 1
#define LEFT  2 

CheapStepper stepper;
byte moving = false;

void setup() {
  //Baudrate at 9600. This has to be the same value as in the java program. 
  Serial.begin(9600);
}

void loop() {  
 //Check for serial messages
 if(Serial.available() > 0){
  //Read incomingByte as message. This message is either a one or a zero
  byte incomingByte = Serial.read();
  //Depending on the message the motor status is set.
  switch(incomingByte){
    case PAUSE: //0
      moving = PAUSE;
    break;
    case RIGHT: //1
      moving = RIGHT;
    break;
    case LEFT:  //2
      moving = LEFT;
    break;
  }
 }

  //If motorstatus is right then rotate the motor clockwise
  if(moving == RIGHT){
    stepper.step(CLOCKWISE);
  }
  
  //If motorstatus is left then rotate the motor anticlockwise
  if(moving == LEFT){
    stepper.step(ANTI_CLOCKWISE);
  }
}
