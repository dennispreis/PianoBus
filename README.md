# PianoBus

**PianoBus** is a project that creatively combines music and electronics. It demonstrates how a musical instrument — in this case, a piano — can interact with electronic hardware through MIDI signals to control a physical motor via a microcontroller (Arduino Nano).

When a piano key is pressed, a MIDI message is sent to the computer and detected by a Java program written in Processing. Using the **The MidiBus** library, the MIDI message is received and translated into a serial command that is sent to the Arduino Nano. Depending on the key pressed, the motor connected to the Arduino rotates either clockwise or counterclockwise, or stops.

Piano -> MIDI data -> Processing -> Serial -> Arduino -> Motor

## Project Highlights

- Real-time MIDI-to-motor control
- Integration of Processing and Arduino communication
- Motor rotation direction based on specific piano keys
- Easily expandable to visualize or control other actuators


## Components Used

- **Microcontroller**: Arduino Nano (ATmega328P)
- **Motor**: 28BYJ-48 Stepper Motor
- **Motor Driver**: ULN2003 Driver Board
- **Piano**: YAMAHA PSR-350
- **MIDI to USB Cable**


## Wiring

The following table shows the wiring connections between the Arduino Nano and the ULN2003 Motor Driver:

| Arduino Nano Pin | Motor Driver Pin |
|:----------------:|:----------------:|
| 5V               | V+               |
| GND              | GND              |
| D8               | IN1              |
| D9               | IN2              |
| D10              | IN3              |
| D11              | IN4              |


