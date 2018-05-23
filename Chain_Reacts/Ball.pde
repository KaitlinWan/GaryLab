class Ball{
  float x,y,h,w;
  color c;
  Ball(int x, int y, int h, int w) {
    int toFillr = int(random(0,255));
    int toFillg = int(random(0,255));
    int toFillb = int(random(0,255));
    c = color(toFillr, toFillg, toFillb);
    fill(c);
    ellipse(x,y,h,h);
  }
  void update() {
    int a = int(random(0,10));
    int b = int(random(0,600));
    ellipse(x+a,y+a,h,h);
  }
    
}
