class Collision {
  Ball [] targets;

  Collision(Ball[] balls) {
    targets = balls;
  }

  void checkCollison() {
    float[] distances = new float[targets.length];

    for (int i = 0; i < targets.length; i++) {
      for (int j = i+1; j < targets.length; j++) {
        line(targets[i].x, targets[i].y, targets[j].x, targets[j].y);
        if (targets[i].diameter/2 + targets[j].diameter/2 >= dist(targets[i].x, targets[i].y, targets[j].x, targets[j].y)) {
          targets[i].speedX = - targets[i].speedX;
          targets[i].speedY = - targets[i].speedY;

          targets[j].speedX = - targets[j].speedX;
          targets[j].speedY = - targets[j].speedY;
        }
      }
    }
  }
}
