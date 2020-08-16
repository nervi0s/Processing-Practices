class Bubble {
  float x;
  float y;
  float speedY;

  float colorR;
  float colorG;
  float colorB;

  Bubble() {
    x = random(width);
    y = random(height);
    speedY = 2;
    colorR = 0;
    colorG = 255;
    colorB = 0;
  }

  void display() {
    stroke(255, 0, 0);
    fill(colorR, colorG, colorB);

    ellipse(x, y, 80, 80);
  }

  void ascend() {
    y = y - speedY;
  }

  void top() {
    if (y < 0) {
      speedY = 0;
    }
  }

  void pop() {
    colorR = (random(255));
    colorG = (random(255));
    colorB = (random(255));
  }
}
