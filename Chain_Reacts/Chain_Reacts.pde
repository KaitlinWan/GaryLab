int numBalls = int(random(60,90));
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup(){
  background(51);
  size(900,850);
  for (int i = 0; i < numBalls; i++) {
    int x = int(random(0,900));
    int y = int(random(0,850));
    float r = random(10,50);
    balls.add(new Ball(x,y,r));
  }
}

void draw(){
  background(51);
   for(int i = 0; i < balls.size(); i ++) {
     
     if (balls.get(i).state == 0) {
       for (int n = 0; n < balls.size(); n ++) {
         if (balls.get(n).state == 1 || balls.get(n).state == 2) {
           float xDist = abs(balls.get(i).x - balls.get(n).x); 
           float yDist = abs(balls.get(i).y - balls.get(n).y); 
           
           float dist = pow(xDist, 2) + pow(yDist, 2);
           float rads = pow((balls.get(i).rad + balls.get(n).rad), 2);
           if (dist <= rads) {
             balls.get(i).state = 1;
           }
         }
       }
     }
       
     
     
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
