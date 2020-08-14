
void setup() {
  size(640, 360);
}

void draw() {

  background(150);
  displayBall(55, 100, 80);
  displayBall(200, 60, 40);
  displayBall(400, 200, 150);
}



void displayBall(float x, float y, float diameter) {
  fill(0, 0, 255);
  ellipse(x, y, diameter, diameter);
}
