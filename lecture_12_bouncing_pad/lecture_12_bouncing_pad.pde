int x, y;
int diam;
int xdir, ydir;
color ballColor;

int padX, padY;
int padWidth;
color padColor;

void setup(){
  size(800, 600);
  x = width / 2;
  y = height / 2;
  diam = 30;
  xdir = 5;
  ydir = 3;
  ballColor = #FFFF00;

  padX = width/2;
  padY = height-20;
  padWidth = 200;
  padColor = #00FF00;
  noStroke();
}

void draw(){
    background(200);
   
    // ball drawing
    fill(ballColor);
    ellipse(x, y, diam, diam); 
    x += xdir; //x = x + xDir;
    y += ydir; 
    
    // drawing racket...
    fill(padColor);
    padX = mouseX - padWidth/2;
    rect(padX, padY, padWidth, 20, 15);
    
    // ball bouncing 
    if (x - diam/2 < 0) { // left side check
      xdir *= -1;
      //padWidth = padWidth - 10;
    }
    if (x + diam/2 > width) { // right side check
      xdir *= -1;
      //padWidth = padWidth - 20;
    }
    if (y - diam/2 < 0) {
      ydir *= -1;
    }
    if (y + diam/2 > height) {
      ydir *= -1;
    }
    
    if ( x > padX &&
         x < padX + padWidth &&
         y > padY-diam/2){
           ydir *= -1;
           fill(#FF0000);
           rect(padX+2, padY+2, padWidth-4, 16, 15);
    }
}
