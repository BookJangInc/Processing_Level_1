int x, y;
int diam; 
int xdir, ydir; // ball's y direction
color ballColor;  // ball's color

void setup(){
  size(800, 600);
  x = 100;
  y = 100;
  diam = 30;
  xdir = +5;
  ydir = +3;
  ballColor = #000000; //hexadecimal(0..F)
}

void draw(){
  background(200);
  
  fill(ballColor);
  ellipse(x, y, diam, diam);
  x = x + xdir; // ball movement
  y = y + ydir;
  
  if (x - diam/2 < 0){
    xdir = xdir * -1;
    ballColor = #ff0000;
  }
  
  if (x + diam/2 > width){
    xdir = xdir * -1;
    ballColor = #ffff00;
  }
  
  if (y - diam/2 < 0){
    ydir = ydir * -1;
  }
  
  if (y + diam/2 > height){
    ydir = ydir * -1;
  }

  
}
