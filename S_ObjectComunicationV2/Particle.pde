class Particle {
  float x;
  float y;
  float diameter;
  color fillColor;

  Particle() {
    x = random(width);
    y = random(height);
    diameter = random(20, 200);
    fillColor = color(0, 0, 255);
  }

  void  display() {
    stroke(255, 0, 0);
    strokeWeight(2);
    fill(fillColor);

    circle(x, y, diameter);
  }

  void overlaps(Particle other) {
    float distance = dist(x, y, other.x, other.y);
    if (diameter/2 + other.diameter/2 <= distance) {
      fillColor = color(0, 0, 255);
      other.fillColor = color(0, 0, 255);
    } else {
      other.fillColor = color(255, 0, 0, 50);
      fillColor = color(0, 255, 0, 50);
    }
  }

  /*void collitionDetect(Particle parti) { // Other way to determinate a collition
   float distanceToOther;
   distanceToOther = dist(x, y, parti.x, parti.y);
   if (distanceToOther - diameter/2 - parti.diameter/2 <=0 ) {
   println("BOOOM");
   }
   }*/
}
