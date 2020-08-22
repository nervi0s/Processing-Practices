ArrayList<Bubble> bubblesList;

void setup() {
  size(720, 480);

  bubblesList = new ArrayList<Bubble>();

  for (int i = 1; i <= 100; i++) {
    bubblesList.add(new Bubble(random(20, 60)));
  }
}

void draw() {
  background(255);

  for (int i = bubblesList.size() - 1; i >= 0; i--) { // We need this "manually" loop to modify
    Bubble b = bubblesList.get(i);               // the array elements
    b.display();
    b.ascend();
    b.top();

    if (!b.isAlive) { // remove bubble if it disapear in the top
      bubblesList.remove(i);
    }

    if (bubblesList.size() < 100) { // always keep 100 bubbles
      bubblesList.add(new Bubble(random(20, 60)));
    }
  }
}

void mousePressed() {
  println(bubblesList.size());
}
