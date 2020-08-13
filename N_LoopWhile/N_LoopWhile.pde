float x = 0; //<>//
float y = 0;

float spacing = 50;

void setup () {
  size(600, 400);
}

void draw() {
  spacing += random(-2,2); // Only for visual effect
  background(0);

  stroke(255);
  strokeWeight(2);

  x = 0;
  while (x < width) { // Loop for draw vertical lines
    x += spacing;
    line(x, 0, x, height);
  }

  y = 0;
  while (y < height) { // Loop for draw horizontal lines
    y += spacing;
    line(0, y, width, y);
  }
}
