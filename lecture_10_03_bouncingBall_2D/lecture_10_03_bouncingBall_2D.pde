int x, y; // ball’s position
int xdir, ydir; // ball's y direction
int diam; //ball’s diameter
String ballColor;

void setup() {
  size(800, 600);
  x = 25;
  y = 100;
  diam = 50;
  xdir = 5;
  ydir = 5;
  ballColor = "Green";
}

void draw() {
  if (ballColor == "Green") {
    fill(0, 255, 0); //Green
  } else if (ballColor == "Red") {
    fill(255, 0, 0); //Red
  } else if (ballColor == "Yellow") {
    fill(255, 255, 0); //Yellow
  } else {
    fill(0, 0, 0);  //Black, ballColor value error
  }
  background(200);

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
}
