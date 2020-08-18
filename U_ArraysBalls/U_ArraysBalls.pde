Ball [] balls = new Ball [5];
Collision col;

void setup() {
  size(720, 480);

  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(50);
  }
  
  col = new Collision(balls);
}

void draw() {
  background(55);

  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].bound();
    balls[i].checkEdge();
  }
  
  col.checkCollison();
}
