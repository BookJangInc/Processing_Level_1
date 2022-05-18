// ball
int x, y;
int diam;
int xdir, ydir;
color ballColor;

// pad
int padX, padY;
int padWidth;
color padColor;

//brick
int brick1X, brick1Y, brick1Diam;
boolean brick1Alive;

void setup(){
  size(800, 600);
  x = width / 2;
  y = height / 2;
  diam = 30;
  xdir = 6;
  ydir = 6;
  ballColor = #FFFF00;

  padX = width/2;
  padY = height-20;
  padWidth = 200;
  padColor = #00FF00;
  noStroke();
  
  brick1X = 100;
  brick1Y = 100;
  brick1Diam = 100;
  brick1Alive = true;
}

void draw(){
    background(200);
   
    // drawing a ball
    fill(ballColor);
    ellipse(x, y, diam, diam); 
    x += xdir; //x = x + xDir;
    y += ydir; 
    
    // drawing racket...
    fill(padColor);
    padX = mouseX - padWidth/2;
    rect(padX, padY, padWidth, 20, 15);
    
    // drawing a brick
    if ( brick1Alive ){
      fill(255, 0, 0);
      ellipse(brick1X, brick1Y, brick1Diam, brick1Diam);
    }
    
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
    
    // checking collision with a pad
    if ( x > padX &&
         x < padX + padWidth &&
         y > padY-diam/2){
           ydir *= -1;
           fill(#FF0000);
           rect(padX+2, padY+2, padWidth-4, 16, 15);
    }
    
    // checking collision with bricks
    if ( brick1Alive && 
         dist(x, y, brick1X, brick1Y) < diam/2 + brick1Diam/2 + 5) {
           // In above line, the reason why I added '+5' is to give more sage collision detection.
      brick1Alive = false;
      ydir *= -1;
    }
}
