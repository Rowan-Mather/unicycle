/*
    update();
  clear();
  
  // Start button
  rect(startX, startY, startSize, startSize);
  
  // End button
  rect(endX, endY, endSize, endSize);
  fill(255);
  
  // Timer start when press start button
  if(startOver) {
    start();
  }
  
  // Timer stop when press stop button
  if(endOver) {
    stop();
  }
  
  text("Time elapsed: " + getHour() + ":" + getMinute() + ":" + getSecond(), height/2, width/2);
  
  Wheel wheel = new Wheel(width/2, width/2, 300, new String[] 
    {"hi", "hello", "more", "things", "yay"}); 
  wheel.drawy();
  for (Button b : buttons) {
    b.drawy();
  }
  //Slider s = new Slider(50, 50, 300, 75, false);
  //s.drawy();
  */
/*
Shower timer and leaderboard
Button to start timer, button to stop timer
upon stopping the timer, the time will be stored.

Leaderboard shows top x times
Average time also displayed
*/

// Position and sizes of start, end buttons
int startX, startY; 
int startSize = 50; 
int endSize = 50; 
int endX, endY; 

// Booleans for cursor hovering over button
boolean startOver = false;
boolean endOver = false;

int width = 600;
int height = 600;

// Timer stuffs
int startTime = 0, stopTime = 0;
boolean running = false;

/*
*/

/*
*/


void start() {
  startTime = millis();
  running = true;
}

void stop() {
  stopTime = millis();
  running = false;
}

int getElapsedTime() {
  int elapsed;
  
  if(running) {
    elapsed = (millis() - startTime);
  } else {
    elapsed = (stopTime - startTime);
  }
  return elapsed;
}

int getSecond() {
  return (getElapsedTime() / 1000) % 60;
}
int getMinute() {
  return (getElapsedTime() / (1000*60)) % 60;
}
int getHour() {
  return (getElapsedTime() / (1000*60*60)) % 24;
}

/*
If cursor over button and clicking
*/
void update() {
  if (clickOverButton(startX, startY, startSize, startSize) ) {
    startOver = true;
    endOver = false;
  } else if (clickOverButton(endX, endY, endSize, endSize) ) {
    endOver = true;
    startOver = false;
  } else {
    startOver = endOver = false;
  }
}

/*
Check if over button and mouse pressed
*/
boolean clickOverButton(int x, int y, int width, int height) {
  if(mousePressed) {
    if(mouseX > x && mouseY < x + width && mouseY > y && mouseY < y + height) {
       return true; 
    } else {
       return false;
    }
  }
  return false;
}