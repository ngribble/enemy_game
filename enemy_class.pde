class enemy {
  float x;
  float y;
  float vx;
  float vy;
  float size;
  color c;
  int speed;
  int distancee;
  enemy(float Ex, float Ey,float Evx, Float Evy, int espeed, float Esize,color Ec){
   x=Ex;
   y=Ey;
   vx=Evx;
   vy=Evy;
   speed=espeed;
   size=Esize;
   c=Ec;
  }
  void display () {
    fill(c);
   circle (x,y,size); 
  }
  void move(){
     x = x+vx*speed; 
 y = y+vy*speed;
 if(x-size/2<0){
 vx=abs(vx);
 }
 if(x-size/2>width-size){
  vx=abs(vx)*-1; 
 }
 if(y-size/2>height-size){
 x=random(width);
 y-=height;
 speed+=0.05;
 points+=2;
 vx=random(-2,2);
 vy=random(1,5);
 }
 if(speed>=16){
  speed=16; 
 }
 distancee = (int) dist(x,y,h.getX(),h.getY());
  }
}
