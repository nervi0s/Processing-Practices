void setup() {
  size(650, 380);
  //background(55); // If the background is inside setup(), the rectangle movements will have a "memory" effect on the canvas
}

void draw() { 
  
  background(55);
  rectMode(CENTER);
  rect(mouseX, mouseY,mouseX>325?650-mouseX:mouseX , mouseY>190?380-mouseY:mouseY); // mouseX>325?650-mouseX:mouseX , mouseY>190?380-mouseY:mouseY
                                                                                    // To avoid that the rectangle go out of window
  System.out.println(mouseX);
  
}
