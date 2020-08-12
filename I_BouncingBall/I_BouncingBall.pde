float circleX;
boolean finalRight = false;

float diameter;

void setup() {
  size(680, 380);
 
  diameter = 100;
  circleX = 0 + diameter/2;
}

void draw() {
  
  background(55);

  fill(255,0,0);
  circle(circleX, height/2, diameter);

  if (finalRight == false) { // Move to right or left
    circleX++;
  } else {
    circleX--;
  }

  if (circleX > width - diameter/2) { // Detects when the circle has arrived to right edge
    finalRight = true;
  }

  if (circleX < 0 + diameter/2) { // Detects when the circle has arrived to left edge
    finalRight = false;
  }
  
  println(circleX);
}
