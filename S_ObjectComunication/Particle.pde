class Particle {
  float x;
  float y;
  float diameter;
  Particle parti;

  Particle() {
    x = random(width);
    y = random(height);
    diameter = random(20, 200);
  }

  void  display() {
    stroke(255, 0, 0);
    strokeWeight(2);
    noFill();
    circle(x, y, diameter);
  }

  boolean overlaps(Particle other) {
    float distance = dist(x, y, other.x, other.y);
    if (diameter/2 + other.diameter/2 <= distance) {
      return false;
    } else {
      return true;
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
