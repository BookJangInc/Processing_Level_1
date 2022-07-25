int brick1X, brick1Y, brick1Diam;
boolean brick1Alive;

void setup() {
  size(800, 600);
  brick1X = width/2;
  brick1Y = 100;
  brick1Diam = 60;
  brick1Alive = true;
}

void draw() {
  background(200);
  if (brick1Alive) {
    fill(255, 0, 0);
    ellipse(brick1X, brick1Y, brick1Diam, brick1Diam);
  }

  if (brick1Alive) {
    if (dist(brick1X, brick1Y, mouseX, mouseY) < brick1Diam/2) {
      brick1Alive = false;
    }
  }
}
