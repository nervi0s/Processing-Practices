class Ball {
  float x;
  float y;
  float diameter;
  float increaseDiameter;
  float maxDiameter;

  Ball() {
    x = random(width);
    y = random(height);
    diameter = random(100);
    increaseDiameter = 1;
    maxDiameter = random(100,300);
  }

  void display() {
    ellipse(x, y, diameter, diameter);
  }

  void transform() {
    diameter += increaseDiameter;
    if (diameter >= maxDiameter ||diameter < 0) {
      increaseDiameter = -increaseDiameter;
    }
    
  }
}
