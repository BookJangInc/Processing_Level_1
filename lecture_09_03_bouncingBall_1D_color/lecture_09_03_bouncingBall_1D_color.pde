int x; // ball’s position
int xdir; // ball’s direction
int diam; //ball’s diameter

void setup() {
  size(800, 600);
  x = 25;
  xdir = 5;
  diam = 50;
}

void draw() {
  background(200);
  ellipse(x, 100, diam, diam);
  x = x + xdir; // ball movement
  if (x + diam/2  > 800) {
    xdir = xdir * -1;
    fill(255, 0, 0);
  }
  if (x - diam/2 < 0) {
    xdir = xdir * -1;
    fill(255, 255, 0);
  }
}
