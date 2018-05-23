int numBalls = int(random(25,35));
Ball[] allb = new Ball[numBalls];

void setup(){
  background(51);
  size(600,600);
  for (int i = 0; i < numBalls; i++) {
    int x = int(random(0,600));
    int y = int(random(0,600));
    int h = int(random(0,100));
    allb[i] = new Ball(x,y,h,h);
  }
}

void draw(){
   for(Ball b : allb) {
     b.update();
  }
}
