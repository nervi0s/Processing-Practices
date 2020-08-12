
void setup() {
  size(680, 460);
}

void draw() {
  background(55);

  if (mouseX>width/2 && (mouseY<height/2)) {
    rectMode(CENTER);
    rect(width*3/4, height/4, 50, 40);
  } 
  if (mouseX<width/2 && (mouseY<height/2)) {
    rectMode(CENTER);
    rect(width/4, height/4, 50, 40);
  }
  if (mouseX>width/2 && (mouseY>height/2)) {
    rectMode(CENTER);
    rect(width*3/4, height*3/4, 50, 40);
  }
  if (mouseX<width/2 && (mouseY>height/2)) {
    rectMode(CENTER);
    rect(width/4, height*3/4, 50, 40);
  }

  println(mouseX);

  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}
