class Bubble {
  float x;
  float y;
  float speedY;
  float diameter;
  color defaultColor;

  Bubble() { // Default empty constructor
    x = random(width);
    y = height;
    speedY = random(0.5, 2);
    diameter = 65;
    defaultColor = color (100, 100, 100, 25);
    //frameRate(1);
  }

  Bubble(float customX, float customY, float customDiameter, color customColor, float cstmSpeedY) { // Defined constructor
    x = customX;
    y = customY;
    speedY = cstmSpeedY;
    diameter = customDiameter;
    defaultColor = customColor;
  }

  void display() {
    stroke(255);
    fill(defaultColor);

    ellipse(x, y, diameter, diameter);
  }

  void ascend() {
    y = y - speedY;
    x = x + random(-2, 2);
  }

  void top() {
    if (y < 0 - diameter) {
      y = height + diameter/2;
      //speedY = 0;
    }
  }

  void pop() {
    defaultColor = color(random(255), random(255), random(255));
  }
}
