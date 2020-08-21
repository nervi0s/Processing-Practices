float  ancho;
float largo;

Rain[] gotas = new Rain[500];

void setup() {
  size(720, 480);
  for (int i = 0; i < gotas.length; i++) {
    gotas[i] = new Rain();
  }
}

void draw() {
  background(55);
  ancho = random(2, 6);
  rect(random(255), random(300), ancho, ancho<=4?random(6, 10):random(13, 16));

  for (int i = 0; i < gotas.length; i++) {
    gotas[i].display();
    gotas[i].fall();
    gotas[i].toTop();
  }
}
