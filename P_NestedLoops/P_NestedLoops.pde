float auxEndX = 0;
float auxEndY = 0;

void setup() {
  size(600, 600);
}


void draw() {
  background(55);

  for (int i = 0; i <= auxEndX; i+= 100) {
    stroke(255);
    strokeWeight(10);
    line(i, 0, i, height);
    for (int j = 0; j <= auxEndY && auxEndX > width; j+= 100) {
      stroke(255);
      strokeWeight(10);
      line(0, j, width, j);
    }
  }

  if (auxEndX <= width) {
    auxEndX++;
  }

  if (auxEndY <= height && auxEndX > width) {
    auxEndY++;
  }

  println(auxEndY);
}
