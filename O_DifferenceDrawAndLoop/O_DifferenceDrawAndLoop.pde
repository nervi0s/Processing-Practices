float auxEndX = 0; //<>//

void setup() {
  size(800, 300);
}

void draw() {

  background(0);

  stroke(255, 0, 0);
  strokeWeight(2);

  int x = 0;

  while (x <= auxEndX) {
    line(x, 0, x, height);
    x = x + 20;
    println(auxEndX);
  }

  if ( auxEndX < width) {
    auxEndX += 1;
  }
  
}

/* El loop interior, en este caso while seimpre se ejecuta enteramente
** y el resultado de este es mostrado al final por el draw(), para no confundirnos,
** el loop principal draw() es para propósitos de animación, mientras que el loop
** interno del draw(), que en este caso es un while, es para repetir un elemento
** múltiples veces en un fragmento de animación
*/
