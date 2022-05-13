int x, y;
int diam; // ball's diameter
int xdir; // ball's direction

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
  
  if (x > 800){
  //if (x + diam/2 > 600){
    xdir = xdir * -1;
  }
  
  if (x < 0){
  //if (x - diam/2 < 0){
    xdir = xdir * -1;
  }
}
