# The PianoBus!

PianoBus is a simple project which combines music with electronics. It shows how a microcontroller can be controlled by playing the piano. By pressing the piano buttons a signal is send from the piano to the computer as a MIDI message which gets detected by a java code written in processing. With the help of the library "The MidiBus" the MIDI message gets received and further a command is send to the Arduino Nano using the processing serial class. This Command tells the microcontroller whether the motor should rotate or not. 

The program is written in processing (Version: 4.0b2) as java code and the software for the arduino is written in the ArduinoIDE (Version: 1.8.16). 

Components used in this project:
* Microctronoller: Arduino Nano (ATmega328P)
* Motor: 28BYJ-48 Stepper Motor
* Motor driver: ULN2003
* Piano: YAMAHA PSR-350
* MIDI to USB cable
