
void setup() {
  size(700, 360);
}

void draw() {

  //background(150);

  /*for (int i=100; i<=700; i+=100) {
    displayBall(i-50, 200, 80);
  }*/
  
  /*displayBall(55, 100, 80);
  displayBall(200, 60, 40);
  displayBall(400, 200, 150);*/
  
  
}

void mousePressed(){
  displaySquare(mouseX,mouseY,50);
}

void displayBall(float x, float y, float diameter) {
  fill(0, 0, 255);
  ellipse(x, y, diameter, diameter);
}

void displaySquare(float x, float y, float side) {
  fill(0, 255, 0);
  rectMode(CENTER);
  rect(x, y, side, side);
}
