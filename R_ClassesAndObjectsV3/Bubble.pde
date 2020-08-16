class Bubble {
  float x;
  float y;
  float diameter;
  float speedY;
  color defaultColor;

  Bubble() { // Default empty constructor
    x = random(width);
    y = random(height);
    diameter = 40;
    speedY = 2;
    defaultColor = color (0, 255, 0);
  }

  Bubble(float customX, float customY, float customDiameter, color customColor, float cstmSpeedY) { // Defined constructor
    x = customX;
    y = customY;
    speedY = cstmSpeedY;
    diameter = customDiameter;
    defaultColor = customColor;
  }

  void display() {
    stroke(255, 0, 0);
    fill(defaultColor);

    ellipse(x, y, diameter, diameter);
  }

  void ascend() {
    y = y - speedY;
    x = x + random(-2, 2);
  }

  void top() {
    if (y < diameter/2) {
      speedY = 0;
    }
  }

  void pop() {
    defaultColor = color(random(255), random(255), random(255));
  }
}
