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
    speedY = ancho*largo < 40 ? random(1, 1.3) : random(1.6, 1.9);
  }

  void display() {
    if (largo * ancho < 40) {
      fill(153, 0, 255, 155);
    } else {
      fill(153, 0, 255, 210);
    }
    noStroke();
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
