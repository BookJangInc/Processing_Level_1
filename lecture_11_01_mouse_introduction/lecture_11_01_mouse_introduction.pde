// mouse interaction
// mouseX, mouseY variables

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  // background(200); // comparisons with/without background() function
  ellipse(mouseX, mouseY, 100, 100);
}
