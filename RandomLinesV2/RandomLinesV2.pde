void setup () { // This runs only once
  size(680, 500); // Canvas size
}

int count = 0; // Aux variable to draw N lines and stop do it.

void draw() { // This runs in a infinite loop
  randomPoints(340, 250, 200, 200);
}

/* Generate random points equidistant to origin point (x1,y1).
 ** distance -> The distance from origin point.
 ** nPoints  ->  Tthe number of randomly generated points.
 */

void randomPoints (float x1, float y1, int distance, int nPoints) {

  while (count < nPoints) {

    double randomNumber = Math.random();  // Random numer between 0 and 1.
    
    double theta = randomNumber * 2 * PI; // Random angle between 0 and 2π.
    double xRandom = x1 + distance * Math.cos(theta); // Parametric Equation of a Circle
    double yRandom = y1 + distance * Math.sin(theta); // Parametric Equation of a Circle

    line(x1, y1, (float)xRandom, (float)yRandom);

    count++;
    System.out.println(count);
  }
}
