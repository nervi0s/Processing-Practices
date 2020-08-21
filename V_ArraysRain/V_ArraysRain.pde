Rain[] gotas = new Rain[650];

void setup() {
  size(720, 480);
  for (int i = 0; i < gotas.length; i++) {
    gotas[i] = new Rain();
  }
}

void draw() {
  background(55);

  for (int i = 0; i < gotas.length; i++) {
    gotas[i].display();
    gotas[i].fall();
    gotas[i].toTop();
  }
}
