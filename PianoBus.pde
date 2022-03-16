//Library imports
import themidibus.*; 
import processing.serial.*;

//Serial instances for the arduino and Midibus instance for the piano connection
Serial arduino; 
MidiBus piano; 

void setup() {
  size(400, 400);
  
  /* Initialize arduino bus at USB-Port COM3 with a baudrate of 9600
   * USB-Port may be different. Search for needed name with "println(Serial.list());"
   * Baudrate has to be the same as in the arduino code
   */   
  //println(Serial.list()); 
  arduino = new Serial(this, "COM3", 9600);
  
  /* Initialize a MidiBus to the dedicated input and output
   * Search for needed name or index with "MidiBus.list();"
   */
  MidiBus.list();
  piano = new MidiBus(this, 1, "Microsoft GS Wavetable Synth"); 
}


//Empty loop since we dont want to draw anything. 
//Visualisazion of music can be a thing here!
void draw() {}

/* This function gets called everytime the MidiBus receveives a MIDI-NoteOn command.
 * Dependend on the pitch of the note a message is send to the arduino through the serial bus. 
 * The message is either a one for right or a 2 for left and it controlls the rotation of the motor. 
 */
void noteOn(int channel, int pitch, int velocity) {
  switch(pitch){
    case 60:
      arduino.write(1); //Right
    break;
    case 62:
      arduino.write(2); //LEFT
    break;
  }
}

/* This function gets called everytime the MidiBus receveives a MIDI-NoteOff command. 
 * A message to the arduino serial bus 
 * is send to stop the rotation of the motor. 
 */
void noteOff(int channel, int pitch, int velocity) {
  arduino.write(0);
}

// This function get called everytime the MIdiBus receveies a controller change command.
void controllerChange(int channel, int number, int value) {}
