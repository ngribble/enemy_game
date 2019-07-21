float y=0; //<>//
int speed = 2;
float x=random(1, width);
float size=50;
float diameter=100;
public float distance;
float vx=1;
float vy=1;
float hsize=50;
float hvx=0;
float hvy=0;
float hspeed=1.5;
public boolean Up=false;
public boolean Down=false;
public boolean Left=false;
public boolean Right=false;
public boolean  Dead=false;
hero h;
public int points;
ArrayList<enemy>enemies=new ArrayList<enemy> ();
void setup () {
  size(1300, 700);
  float hx=width/2;
  float hy= height-diameter/2;
  h= new hero (hx, hy, diameter, hvx, hvy, hspeed, 0);
  for (int k=0; k<7; k++) {
    color c= color(random(255),random(255),random(255));
    x=random(1, width);
    enemy e= new enemy (x, y, 1, (float) 1, 2, size, c);
    enemies.add (e);
  }
}

void draw() {
  background (255); 
  for (int i = 0; i<7; i++) {
    enemies.get(i).display();
  }

  h.display();
  distance = dist(x, y, h.getX(), h.getY());
  collision();
  if (!Dead) {

    h.move();
    for (int j = 0; j<7; j++) {
      enemies.get(j).move();
    }
  } else {
    fill(0);
    textSize(32);
    text(points, width/2, height/2+32);
    text("Game Over", width/2, height/2);
    noLoop ();
  }
}
void collision() {
  for (int i = 0; i<7; i++) {
    enemy e= enemies.get(i);
    e.distancee = (int)dist(h.getX(), h.getY(), e.x, e.y);
    if (e.distancee <= (e.size + diameter)/2) {
      Dead=true;
    }
  }
}
void keyPressed() {
  h.keyPressed();
}
