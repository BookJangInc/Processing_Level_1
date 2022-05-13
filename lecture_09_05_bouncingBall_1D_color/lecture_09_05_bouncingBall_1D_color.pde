int x, y;
int diam; 
int xdir;

void setup(){
  size(800, 600);
  x = 100;
  y = 100;
  diam = 30;
  xdir = +5;
}

void draw(){
  background(200);
  ellipse(x, y, diam, diam);
  x = x + xdir; // ball movement
  
  if (x + diam/2 > 800){
    xdir = xdir * -1;
    fill(#ffff00);
  }
  
  if (x - diam/2 < 0){
    xdir = xdir * -1;
    fill(#ff0000);
  }
}
