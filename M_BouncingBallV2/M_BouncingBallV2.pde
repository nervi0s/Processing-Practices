float xCircle = 0 + 50 ;
boolean clicDetect = false;
boolean allowIncrement = true;

void setup() {
  size(680, 420);
}

void draw() {

  background(55);

  ellipse(xCircle, 210, 100, 100);

  if (clicDetect) {

    if (allowIncrement) {
      xCircle += 2;
    } else {
      xCircle -= 2;
    }

    if (xCircle == width - 50) {
      allowIncrement = false;
    } else if (xCircle == 0 + 50) {
      allowIncrement = true;
    }
  }
}

void mousePressed() {

  /*if (clicDetect) {
   clicDetect = false;
   } else {
   clicDetect = true;
   }*/

  // More shorter:
  clicDetect = !clicDetect;

  println(clicDetect);
}
