ArrayList<Bubble> bubblesList; 
 
void setup() {
  size(720, 480);

  bubblesList = new ArrayList<Bubble>();

  /*for (int i = 0; i < 10; i++) {
   bubblesList.add(new Bubble(random(20, 60)));
   }*/
}

void draw() {
  background(255);
  bubblesList.add(new Bubble(random(20, 60)));

  for (Bubble b : bubblesList) { // for-each Java loop
    b.display();
    b.ascend();
    b.top();
  }

  if (bubblesList.size()>150) {
    bubblesList.remove(0);
  }
}

void mousePressed() {
  bubblesList.add(new Bubble(random(20, 60)));
  println(bubblesList.size());
}

void keyPressed() {
  bubblesList.remove(0);
  println(bubblesList.size());
}
