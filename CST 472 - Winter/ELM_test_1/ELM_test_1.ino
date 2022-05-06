char buffer[64];
volatile byte count = 0;

void setup() {
  // put your setup code here, to run once:
  Serial1.begin(38400);
}

void loop() {
  // put your main code here, to run repeatedly:
  if(Serial1.available() > 0){ //if there is data to be read
    byte temp = Serial1.read();
    if(count < sizeof buffer){
      buffer[count++] = temp;
      if(temp == '\r'){
        count = 0;
        Serial1.print(buffer);
      }
    }
  }
  //else{
    //Serial1.print("AT Z\r"); //Reset command
  //}
}
