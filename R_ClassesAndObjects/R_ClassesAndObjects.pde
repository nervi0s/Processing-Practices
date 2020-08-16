Bubble b;

void setup() {
  size(720, 480);

  b = new Bubble();
}

void draw() {
  background(55);
  strokeWeight(2);

  b.display();
  b.ascend();
  b.top();
}



void mousePressed() {
  b.pop();
}
