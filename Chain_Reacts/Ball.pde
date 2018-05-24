class Ball{
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = .25;
  final float MAX_rad = 50;
  
  float x,y,rad;
  color c;
  float dx, xVel;
  float dy, yVel;
  int state;
  
  
  Ball(float xcor, float ycor, float r) {
    state = 0;
    x = xcor;
    y = ycor;
    rad = r;
    c = color(random(255), random(255), random(255));
    yVel = random(-5, 5);
    xVel = random(-5, 5);
  }
  
  void update() {
    
    if (state == 1) {
      rad += CHANGE_FACTOR;
      if (rad > 50)
        state = 2;
    }
    else if (state == 2) {
      rad -= CHANGE_FACTOR;
      if (rad <= 0)
        state = 3;
    }
    
    if (state == 0) {
      x += xVel;
      y += yVel;
    }
    noStroke();
    fill(c);
    ellipse(x,y, rad * 2, rad * 2);
  }
  
  void hitWalls() {
    if (x > width-rad) {
      x = width-rad;
      xVel *= -1;
    } else if (x < rad) {
      x = rad;
      xVel *= -1;
    } else if (y > height-rad) {
      y = height-rad;
      yVel *= -1;
    } else if (y < rad) {
      y = rad;
      yVel *=-1;
    }
  }
  
  Ball(float x, float y) {
    this(x, y, 0);
    state = 1;
  }
    
}
