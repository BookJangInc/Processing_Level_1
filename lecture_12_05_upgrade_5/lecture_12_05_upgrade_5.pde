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
//[upgrade #3: life of bricks]
//boolean brick1Alive;
int brick1Alive;

//[upgrade #5: life of player]
int life;

void setup() {
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

  brick1X = width/2;
  brick1Y = 15;
  brick1Diam = 30;
  //[upgrade #3: life of bricks]
  //brick1Alive = true;
  brick1Alive = 3;

  //[upgrade #5: life of player]
  life = 3;
}

void draw() {
  background(200);

  //[upgrade #4: checking end of game and display messages]
  if (brick1Alive == 0) {
    textSize(30);
    fill(255, 0, 0);
    text("Game Ends", 10, 30);
    noLoop();
  }

  //[upgrade #5: life of player]
  textSize(30);
  fill(255, 0, 0);
  text("Life:  " + life, width-100, 30);
  if (life == 0) {
    textSize(30);
    fill(255, 0, 0);
    text("Game Ends", 10, 30);
    noLoop();
  }

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
  //[upgrade #3: life of bricks]
  //if (brick1Alive ){
  //  fill(255, 0, 0);
  //  ellipse(brick1X, brick1Y, brick1Diam, brick1Diam);
  //}
  if (brick1Alive > 0) {
    fill(80*brick1Alive, 0, 0);
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
    //[upgrade #5: life of player]
    life--;
  }

  // checking collision with a pad
  if ( x > padX &&
    x < padX + padWidth &&
    y > padY-diam/2) {
    ydir *= -1;
    fill(#FF0000);
    rect(padX+2, padY+2, padWidth-4, 16, 15);
    // [Upgrade #1] ball speed up
    if (xdir > 0) 
      xdir++;
    else
      xdir--;

    if (ydir > 0)
      ydir++;
    else
      ydir--;
    // [Upgrade #2] change pad size
    padWidth -= 10;
  }

  // checking collision with bricks
  //[upgrade #3: life of bricks]
  //if ( brick1Alive && 
  //     dist(x, y, brick1X, brick1Y) < diam/2 + brick1Diam/2 ) {
  //  brick1Alive = false;
  //  ydir *= -1;
  //}
  if ( brick1Alive > 0 && 
    dist(x, y, brick1X, brick1Y) <= diam/2 + brick1Diam/2 + 5) {
    brick1Alive--;
    ydir *= -1;
  }
}
