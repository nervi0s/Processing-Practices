void setup () { // This runs only once
 
  size(680, 500); // Canvas size
  
}

void draw(){ // This runs in a infinite loop
  
  randomPoints(300, 300, 50, 100);
  
}

/* Generate random numbers equidistant to origin point (x1,y1).
** distance -> The distance from origin point.
** nPoints  ->  Tthe number of randomly generated points.
*/

void randomPoints (float x1, float y1, int distance, int nPoints) {
  
  int matches = 0; // Drawn lines counter.
  boolean yMaxAppear = false; // yMaxAppear and xMaxAppear are used to know when the max distance has been used to generate a random point
  boolean xMaxAppear = false; // and then no use more this value to calculete other random point, beacause if this appear again the random drawn
                              // lines tend to accumulate in a little region and the rest of region appear empty.

  while (matches <= nPoints) {
    
    float xRandom = getRandomFloat(x1-distance, x1+distance);
    float yRandom = getRandomFloat(y1-distance, y1+distance);


    if (yMaxAppear == true || xMaxAppear == true) {
      do {
        yRandom = getRandomFloat(y1-distance, y1+distance);
        xRandom = getRandomFloat(x1-distance, x1+distance);
      } while (yRandom == y1+distance || xRandom == x1+distance);
    }
    
    

    double ranDist = distanceBetweenTowPoints(x1, y1, xRandom, yRandom);
    
    /*This conditional is necesary because if I try to find values exactly eaquals to the distance, the vaules are never found.
      So this is the range that I consider correct values to match */
      
    if (ranDist<distance + 0.00001 && ranDist>distance - 0.00001) {
      //draw a line
      line(x1, y1, xRandom, yRandom);
      matches++;
      
      if(xRandom == x1+distance){
        xMaxAppear = true;
      }
      if (yRandom == y1+distance) {
        yMaxAppear = true;
      }
    }
  }
}

// Generate randoms number between min and max arguments.
float getRandomFloat (float min, float max) {

  min = (float)Math.ceil(min);
  max = (float)Math.floor(max);
  
  float returnedValor = (float)((Math.random() * (max - min + 1)) + min);

  if (returnedValor>max) {
    return (float)Math.floor(returnedValor);
  } else {
    return returnedValor;
  }

}

// Return the distance between two points.
double distanceBetweenTowPoints(float x1, float y1, float x2, float y2){
  return Math.sqrt(Math.pow(x2-x1, 2)+Math.pow(y2-y1, 2));
}
