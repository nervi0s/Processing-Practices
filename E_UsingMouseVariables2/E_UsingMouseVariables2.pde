void setup() {
  size(650, 380);
  background(55);
}

void draw() { 
  
  //background(55); // If the background is here, then we would never see the mouse trace.
  stroke(255);
  line(pmouseX,pmouseY,mouseX,mouseY); // pmouseX/Y stores the previous mouse position.
  
}
