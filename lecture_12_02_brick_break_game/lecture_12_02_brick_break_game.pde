int x, y; // ball’s position
int xdir, ydir; // ball's y direction
int diam; //ball’s diameter
String ballColor;

int padX, padY;
int padWidth, padHeight;

int brick1X, brick1Y, brick1Diam;
boolean brick1Alive;

void setup() {
  size(800, 600);
  x = 25;
  y = 100;
  diam = 50;
  xdir = 5;
  ydir = 5;
  ballColor = "Green";
  padWidth = 200;
  padHeight = 20;
  padY = height - padHeight;
  brick1X = width/2;
  brick1Y = 100;
  brick1Diam = 60;
  brick1Alive = true;
}

void draw() {

  background(200);

  if (ballColor == "Green") {
    fill(0, 255, 0); //Green
  } else if (ballColor == "Red") {
    fill(255, 0, 0); //Red
  } else if (ballColor == "Yellow") {
    fill(255, 255, 0); //Yellow
  } else {
    fill(0, 0, 0); //Black, ballColor value error
  }


  ellipse(x, y, diam, diam);
  x = x + xdir; // ball movement
  y = y + ydir;

  if (x - diam/2 < 0) {
    xdir = xdir * -1;
    ballColor = "Red";
  }

  if (x + diam/2 > width) {
    xdir = xdir * -1;
    ballColor = "Yellow";
  }

  if (y - diam/2 < 0) {
    ydir = ydir * -1;
  }

  if (y + diam/2 > height) {
    ydir = ydir * -1;
  }

  padX = mouseX - 100;
  fill(255);
  rect(padX, padY, padWidth, padHeight);

  if (x > padX) {
    if (x < padX + padWidth) {
      if (y + diam/2 > padY) {
        ydir = ydir * -1;
      }
    }
  }
  if (brick1Alive) {
    fill(255, 0, 0);
    ellipse(brick1X, brick1Y, brick1Diam, brick1Diam);
  }

  if (brick1Alive) {
    if (dist(brick1X, brick1Y, x, y) < diam/2 + brick1Diam/2) {
      brick1Alive = false;
    }
  }
}
