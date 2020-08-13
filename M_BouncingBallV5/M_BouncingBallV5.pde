float circleX;
float circleY;

float circleX2;
float circleY2;

float speedX;
float speedY;

float speedX2;
float speedY2;

boolean clicDetect = false;

void setup() {
  size(640, 360);

  circleX = 0;
  circleY = height/2;

  circleX2 = width/4;
  circleY2 = height/4;

  speedX = 10;
  speedY = 5;

  speedX2 = 5;
  speedY2 = 10;
}

void draw() {
  background(150);

  fill(0, 0, 255);
  ellipse(circleX, circleY, 70, 70);
  fill(255, 0, 0);
  ellipse(circleX2, circleY2, 70, 70);

  if (clicDetect) {
    circleX += speedX;
    circleY += speedY;

    circleX2 += speedX2;
    circleY2 += speedY2;
  }

  if (circleX > width || circleX < 0) { // If the ball crosses one of the window sides (right or left)
    speedX = speedX * -1 ; // Turn around!
    //speedX = speedX < 0 ? (speedX - 2) * -1 : (speedX + 2) * -1 ; // Turn around! and number 2 is for increase speed
  }

  if (circleY > height || circleY < 0) { // If the ball crosses one of the window sides (top or down)
    speedY = speedY * -1 ; // Turn around!
    //speedX = speedX < 0 ? (speedX - 2) * -1 : (speedX + 2) * -1 ; // Turn around! and number 2 is for increase speed
  }

  ///// Second circle

  if (circleX2 > width || circleX2 < 0) { // If the ball crosses one of the window sides (right or left)
    speedX2 = speedX2 * -1 ; // Turn around!
    //speedX = speedX < 0 ? (speedX - 2) * -1 : (speedX + 2) * -1 ; // Turn around! and number 2 is for increase speed
  }

  if (circleY2 > height || circleY2 < 0) { // If the ball crosses one of the window sides (top or down)
    speedY2 = speedY2 * -1 ; // Turn around!
    //speedX = speedX < 0 ? (speedX - 2) * -1 : (speedX + 2) * -1 ; // Turn around! and number 2 is for increase speed
  }
  println(speedX);
}

void mousePressed() {
  clicDetect = !clicDetect;
}
