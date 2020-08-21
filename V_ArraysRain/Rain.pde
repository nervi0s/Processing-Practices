class Rain {
  float x;
  float y;
  float ancho;
  float largo;
  float speedY;

  Rain() {
    x = random(width);
    y = random(height);
    ancho = random(2, 6);
    largo = ancho <= 4 ? random(6, 10) : random(13, 16);
    speedY=random(0.2, 1.5);
  }
  void display() {
    fill(145, 25, 60);
    rect(x, y, ancho, largo);
  }
  void fall() {
    y = y + speedY;
  }
  void toTop() {
    if (y > height + largo) {
      y = 0 - largo;
    }
  }
}
