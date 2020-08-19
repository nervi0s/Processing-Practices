Ball [] balls = new Ball [9];
Collision collisionChecker;

void setup() {
  size(720, 480);

  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(80);
  }

  collisionChecker = new Collision(balls);
}

void draw() {
  background(55);

  for (int i = 0; i < balls.length; i++) {
    balls[i].display();
    balls[i].bound();
    balls[i].checkEdge();
  }

  collisionChecker.checkCollison();
}
