void setup() {
  size(600, 600);
}

void draw() {
  background(0);

  stroke(255, 0, 0);
  strokeWeight(2);

  for (int i = 0; i < width; i+=50) {
    for (int j = 0; j <= height; j+=50) {
      fill(random(255), random(255), random(255));
      rect(i, j, 50, 50);
    }
  }
}
