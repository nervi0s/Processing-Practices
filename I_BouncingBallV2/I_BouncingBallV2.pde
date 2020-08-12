float circleX;
float diameter;

boolean goingLeft = true;
boolean goingRight = false;


void setup() {
  size(680, 380);

  diameter = 100;
  circleX = 0 + diameter/2;
}

void draw() {

  background(55);

  fill(255, 0, 0);
  circle(circleX, height/2, diameter);

  if (goingLeft) {
    circleX+=4;
  } 
  if (goingRight) {
    circleX-=4;
  }
  
  if (circleX > width - diameter/2) { // Detects when the circle has arrived to right edge
    goingRight = true;
    goingLeft = false;
  }

  if (circleX < 0 + diameter/2) { // Detects when the circle has arrived to left edge
    goingLeft = true;
    goingRight = false;
  }

  println(circleX);
}
