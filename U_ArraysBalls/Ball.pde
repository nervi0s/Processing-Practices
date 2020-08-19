class Ball {
  float x;
  float y;
  float diameter;
  float speedX;
  float speedY;
  color deafultColor;

  Ball(float asignedDiameter) {
    diameter = asignedDiameter;
    x = random(diameter/2, width - diameter/2);
    y = random(diameter/2, height - diameter/2);
    speedX = 2;
    speedY = 2;
    deafultColor = color (255, 0, 0);
  }

  Ball(float asignedX, float asignedY, float asignedDiameter) {
    x = asignedX;
    y = asignedY;
    diameter = asignedDiameter;
    speedX = 2;
    speedY = 2;
    deafultColor = color (255, 0, 0);
  }

  void display() {
    stroke(200);
    strokeWeight(1.5);
    fill(deafultColor);

    ellipse(x, y, diameter, diameter);
  }

  void bound () {
    x = x + speedX;
    y = y + speedY;
  }

  void checkEdge() {
    if (x > width - diameter/2 || x < 0 + diameter/2) {
      speedX = - speedX;
    }
    if (y > height - diameter/2 || y < 0 + diameter/2) {
      speedY = - speedY;
    }
  }
  /*void checkCollison(Ball other) {
    float distance = dist(x, y, other.x, other.y);
    if (diameter/2 + other.diameter/2 >= distance) {
      speedX = - speedX;
      speedY = - speedY;

      other.speedX = - speedX;
      other.speedY = - speedY;
    }
  }*/
}
