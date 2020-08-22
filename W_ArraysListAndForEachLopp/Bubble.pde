class Bubble {

  float x;
  float y;
  float diameter;
  float speedY;
  boolean isAlive = false;

  Bubble(float diam) {
    x = random(width);
    y = height;
    diameter = diam;
    speedY = random(0.7, 2);
    isAlive = true;
  }

  void display() {
    fill(1500, 150, 150, 100);
    ellipse(x, y, diameter, diameter);
  }

  void ascend() {
    y = y - speedY;
    x = x + random(-2, 2);
  }

  void top() {
    if (y < 0 - diameter/2) {
      isAlive = false;
    }
  }
}
