int x, y;
int diam; 
int xdir, ydir;

void setup(){
  size(800, 600);
  x = 100;
  y = 100;
  diam = 30;
  xdir = +5;
  ydir = +5;
}

void draw(){
  background(200);
  ellipse(x, y, diam, diam);
  x = x + xdir; // ball movement
  y = y + ydir;
  
  if (x - diam/2 < 0){
    xdir = xdir * -1;
    fill(255, 0, 0);
  }
  
  if (x + diam/2 > 800){
    xdir = xdir * -1;
    fill(255, 255, 0);
  }
  
  if (y - diam/2 < 0){
    ydir = ydir * -1;
  }
  
  if (y + diam/2 > 600){
    ydir = ydir * -1;
  }
}
