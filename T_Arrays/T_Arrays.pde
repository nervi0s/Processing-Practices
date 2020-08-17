Bubble[] bubbles = new Bubble[25];

void setup() {
  size(720, 480);
  /*bubbles[0] = new Bubble();
   bubbles[1] = new Bubble(width/2, height, 100, color (0, 0, 255), 5);*/
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble();
    bubbles[i].diameter = (i + 2) * 4;
  }
}

void draw() {
  background(0);
  strokeWeight(2);

  /*bubbles[0].display();
   bubbles[0].ascend();
   bubbles[0].top();
   
   bubbles[1].display();
   bubbles[1].ascend();
   bubbles[1].top();
   
   println(bubbles[1].y);*/

  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
    if (i == 9)
      bubbles[i].defaultColor = color (255, 0, 0);
  }
}



void mousePressed() {
  /*bubbles[0].pop();
   bubbles[1].pop();*/

  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].pop();
  }
}
