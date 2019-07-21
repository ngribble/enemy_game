class hero { //<>// //<>//
  float x;
  float y;
  float vx;
  float vy;
  float speed;
  float Hsize;
  color hc;
  hero(float hx, float hy, float hsize, float hvx, float hvy, float hspeed, color Hc) {
    x=hx;
    y=hy;
    Hsize=hsize;
    vx=hvx;
    vy=hvy;
    speed=hspeed;
    hc=Hc;
  }
  float getX() {
    return x;
  }
  float getY() {
    return y;
  }
  void display () {
    fill(hc);
    circle(x, y, Hsize);
  }
  void move() {
    //keyPressed();
    //keyReleased();
    x=x+vx*speed;
    y=y+vy*speed;
    if (Up) {
      vy=-3;
    } else if (Down) {
      vy=3;
    } else {
      vy=0;
    }
    if (Right) {
      vx=3;
    } else if (Left) {
      vx=-3;
    } else {
      vx=0;
    } 
    if (x-Hsize/2<0) {
      x+=width;
    }
    if (x-Hsize/2>width-Hsize) {
      x-=width;
    }
    if (y-Hsize/2<0) {
      y+=height;
    }
    if (y-Hsize/2>height-Hsize) {
      y-=height;
    }
  }
  void keyPressed () {
    Up=false;
    Down=false;
    Right=false;
    Left=false;
    float DeltaV=2;
    if (keyCode==UP) {
      Up=true;
      vy-=DeltaV;
    }   
    if (keyCode==DOWN) {
      Down=true;
      vy+=DeltaV;
    }
    if (keyCode==RIGHT) {
      Right=true;
      vx+=DeltaV;
    }
    if (keyCode==LEFT) {
      Left=true;
      vx-=DeltaV;
    }
  }
}
