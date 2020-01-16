/*
  Based on Serial Event example and DigitalReadSerial example

  When new serial data arrives, this sketch adds it to a String.
  When a newline is received, the loop prints the string and clears it.

  NOTE: The serialEvent() feature is not available on the Leonardo, Micro, or
  other ATmega32U4 based boards.

  Each command should be in the format %CHANNEL %STATE
  CHANNEL should specify a number 2-13 corresponding to digital outputs 2-13 on the board
  STATE should be 0 or 1 for output lo or high respectively
  If the command matches this syntax, the pin will be set correspondingly
  and the arduino will reply with "OK"

  created 9 May 2011
  by Tom Igoe

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/SerialEvent
*/

// set up a blink on the internal LED to indicate heartbeat
const int ledPin =  LED_BUILTIN;         // the number of the LED pin
int ledState = LOW;                      // ledState used to set the LED
// use "unsigned long" for variables that hold time
unsigned long previousMillis = 0;        // will store last time LED was updated
const long interval = 1000;              // interval at which to blink (milliseconds)

String inputString = "";                 // a String to hold incoming data
bool stringComplete = false;             // whether the string is complete

void setup() {
  // initialize serial:
  Serial.begin(9600);
  // reserve 200 bytes for the inputString:
  inputString.reserve(200);

  // configure digital pins as output
  for(int pin_num=2; pin_num<13; pin_num++){
    pinMode(pin_num, OUTPUT);
  }

  // set the internal LED pin as output:
  pinMode(ledPin, OUTPUT);
}

void loop() {
  // print the string when a newline arrives:
  if (stringComplete) {
    //Serial.println("parsing string: ");
    //Serial.println(inputString);
    // split by the space separating pin number and state
    int splitindex = inputString.lastIndexOf(' ');
    String pin_num_string = inputString.substring(0,splitindex);
    String state_string = inputString.substring(splitindex,inputString.length());
    int pin_num = pin_num_string.toInt();
    int state = state_string.toInt();
    //Serial.println("pin "+String(pin_num)+", state "+String(state));

    // a state of 3 indicates a query
    if(state==3){
      //Serial.println("Query");
      int currentstate = digitalRead(pin_num);
      Serial.println(String(currentstate));
    } else {
      // set the appropriate pin state
      //Serial.println("Write "+String(state));
      int okay = setPin(pin_num, state);
      // return success or not. Right now just checks if state is 0 or 1.
      // we could validate pin numbers if we pre-allocated them.
      Serial.println(String(okay));
    }
    //Serial.println("Done");
      
    // clear the input buffer, reset trigger state:
    inputString = "";
    stringComplete = false;
  }

  // update heartbeat LED
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis;
    if (ledState == LOW) {
      ledState = HIGH;
    } else {
      ledState = LOW;
    }
    digitalWrite(ledPin, ledState);
  }

  // delay just for stability
  delay(1); 
}

/*
  SerialEvent occurs whenever a new data comes in the hardware serial RX. This
  routine is run between each time loop() runs, so using delay inside loop can
  delay response. Multiple bytes of data may be available.
*/
void serialEvent() {
  while (Serial.available()) {
    // get the new byte:
    char inChar = (char)Serial.read();
    // add it to the inputString:
    inputString += inChar;
    // if the incoming character is a newline, set a flag so the main loop can
    // do something about it:
    if (inChar == '\n') {
      stringComplete = true;
    }
  }
}

int setPin(int pin_num, int state){
    // set state. Pretty sure these are just named constants for convenience.
    if (state == 1) {
      state = HIGH;
    } else if(state == 0) {
      state = LOW;
    } else {
      //Serial.println("Unknown state: "+String(state));
      return 3;
    }
    // anything else: error

    // set the requested pin with the requested state:
    //Serial.println("Setting state "+String(state));
    digitalWrite(pin_num, state);
    state = digitalRead(pin_num);
    //Serial.println("Read set state "+String(state));
    return state;
}
