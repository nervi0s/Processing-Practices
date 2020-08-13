size(600, 500);
background(0);

stroke(255,0,0);
strokeWeight(2);


for (int i = 100; i < width; i += 100) {
  line(i, 0, i, height);
}

for (int j = 100; j < height; j += 100) {
  line(0, j, width, j);
}
