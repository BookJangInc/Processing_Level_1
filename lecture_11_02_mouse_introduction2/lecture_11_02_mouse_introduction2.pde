// mouse interaction
// mousePressed variable

void setup() {
  size(600, 400);
  noStroke();
}

void draw() {
  background(200);

  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }

  ellipse(mouseX, mouseY, 80, 80);
}
