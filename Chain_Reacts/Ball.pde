class Ball{
  float x,y,h,w;
  color c;
  float radius, m;
  PVector position;
  PVector velocity;
  
  Ball(int x, int y, float r) {
    radius = r;
    int toFillr = int(random(0,255));
    int toFillg = int(random(0,255));
    int toFillb = int(random(0,255));
    c = color(toFillr, toFillg, toFillb);
    fill(c);
    position = new PVector(x,y);
    velocity = PVector.random2D();
    m = radius*.1;

  }
  void update() {
    position.add(velocity);
  }
  
  void checkBoundaryCollision() {
    if (position.x > width-radius) {
      position.x = width-radius;
      velocity.x *= -1;
    } else if (position.x < radius) {
      position.x = radius;
      velocity.x *= -1;
    } else if (position.y > height-radius) {
      position.y = height-radius;
      velocity.y *= -1;
    } else if (position.y < radius) {
      position.y = radius;
      velocity.y *= -1;
    }
  }
  
  void display() {
    noStroke();
    fill(c);
    ellipse(position.x, position.y, radius*2, radius*2);
  }
    
}
