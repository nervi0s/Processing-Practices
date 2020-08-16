Bubble b;
Bubble a;

void setup() {
  size(720, 480);

  b = new Bubble();
  a = new Bubble(width/2, height, 80, color(0, 0, 255), 5);
}

void draw() {
  background(55);
  strokeWeight(2);

  b.display();
  b.ascend();
  b.top();

  a.display();
  a.ascend();
  a.top();
  
  println(a.y);
}



void mousePressed() {
  b.pop();
  a.pop();
}
