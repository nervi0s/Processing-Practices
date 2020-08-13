float circleX;
float speedX;
boolean clicDetect = false;

void setup() {
  size(640, 360);
  circleX = 0;
  speedX = 10;
}

void draw() {
  background(150);

  fill(0,0,255);
  ellipse(circleX, height/2, 70, 70);

  if (clicDetect) {
    circleX += speedX;
  }

  if (circleX > width || circleX < 0) { // If the ball crosses one of the window sides (right or left)
    speedX = speedX * -1 ; // Turn around!
    //speedX = speedX < 0 ? (speedX - 2) * -1 : (speedX + 2) * -1 ; // Turn around! and number 2 is for increase speed
  }

  println(speedX);
}

void mousePressed() {
  clicDetect = !clicDetect;
}
