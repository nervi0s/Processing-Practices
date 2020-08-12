void setup(){
  size(680,400);
}

int colorFill = 0;
boolean start = false;

float previousX;
float previousY;

void draw(){
  fill(colorFill);
  rectMode(CENTER);
  rect(width/2,height/2,100,50);
}


void mousePressed() {
  
  // Draw a line from one clic origin to actual clic mouse position.
  if(!start){
    previousX = mouseX;
    previousY = mouseY;
    start = true;
  }else{
    line(previousX,previousY,mouseX,mouseY);
    start = false;
  }
 
  // Change rectangle color
  if (colorFill == 0) {
    colorFill = 255;
  } else {
    colorFill = 0;
  }
}
