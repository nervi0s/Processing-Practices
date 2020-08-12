float recX;
float recY;
float fill;

void setup() {
  size(680, 380);
  recX = width/2;
  recY = height/2;
  fill = 0;
}

void draw() {
  background(55);

  fill(fill);
  rectMode(CENTER);
  rect(recX, recY, 100, 60);

  if (mouseX>(width/2)-50&&mouseX<(width/2)+50) {

    if (mouseY>(height/2)-30&&mouseY<(height/2)+30) {
      fill= 255;
    } else {
      fill = 0;
    }
  } else {
    fill = 0;
  }
}
