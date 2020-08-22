Bubble[] bubbles = new Bubble[5];
int numBubble = 0;

void setup() {
  size(720, 480);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(20, 60));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < numBubble; i++) {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
  }
}

void mousePressed() {
  if (numBubble < bubbles.length) {
    numBubble++;
  } else {
    numBubble = 0;
  }
}

void keyPressed() {
  if (numBubble > 0) {
    numBubble--;
  } else {
    numBubble = bubbles.length;
  }
}
