Triangle t1;
Triangle t2;
Point p1;

void setup() {
  size(720, 480);
  t1 = new Triangle(100, 300, 200, 100, 400, 300, 1);
  t2 = new Triangle(600, 250, 650, 200, 680, 250, -1);
  p1 = new Point(0, 0);
}

void draw() {
  background(65);
  t1.display();
  t2.display();
  t1.detectCollision(t2);
  t2.detectCollision(t1);
  //t1.move();
  t2.move();
  p1.display();
  p1.move();
  println("Área T1: " + t1.getArea() + " || Área T2: " + t2.getArea() + " || Áreas de P1 respecto a T1: " + p1.getAreas(t1));
  if (p1.getAreas(t1) == t1.getArea()) {
    p1.setColor(color(255, 0, 0));
    println("BOOM");
  } else {
    p1.setColor(color(255, 255, 0));
  }
}
