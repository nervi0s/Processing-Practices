Particle particle1, particle2;

void setup() {
  size(720, 520);

  particle1 = new Particle();
  particle2 = new Particle();
}

void draw() {
  background(55);

  particle1.x = mouseX;
  particle1.y = mouseY;

  particle1.overlaps(particle2);


  particle1.display();
  particle2.display();
}
