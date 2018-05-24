int numBalls = int(random(25,35));
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup(){
  background(51);
  size(600,600);
  for (int i = 0; i < numBalls; i++) {
    int x = int(random(0,600));
    int y = int(random(0,600));
    float r = random(0,50);
    balls.add(new Ball(x,y,r));
  }
}

void draw(){
  background(51);
   for(int i = 0; i < balls.size(); i ++) {
     balls.get(i).update();
     balls.get(i).hitWalls();
     if (balls.get(i).state == 3)
       balls.remove(i);
     //b.checkCollision();
  }
}

void mouseClicked() {
  balls.add(new Ball(mouseX, mouseY));
}
