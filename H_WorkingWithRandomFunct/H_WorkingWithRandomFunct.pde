float circleX;
float circleY;
float color1;
float color2;
float color3;
float tamanio;

void setup() {
  size(680, 390);
  background(55);
}

void draw() {
  tamanio = random(50); // The random() function return a random float number between 2 values, if it have only one element as parameter
                        // the range will be between zero and the value passed.
  circleX = random(width);
  circleY = random(height);
  
  color1 = random(0, 255);
  color2 = random(0, 255);
  color3 = random(0, 255);

  fill(color1,color2,color3);
  
  ellipse(circleX, circleY, tamanio, tamanio);
}
