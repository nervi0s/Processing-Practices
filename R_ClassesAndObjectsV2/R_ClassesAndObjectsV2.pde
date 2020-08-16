Ball ball1;
Ball ball2;
void setup() {
  size(800, 500);
  ball1 = new Ball();
  ball2 = new Ball();
}

void draw() {
  background(55);
  ball1.display();
  ball1.transform();
  ball2.display();
  ball2.transform();
  println(ball1.diameter +" "+ball1.maxDiameter);
}
