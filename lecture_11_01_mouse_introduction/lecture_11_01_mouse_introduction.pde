// mouse interaction
// mouseX, mouseY variables

void setup() {
  size(600, 400);
  noStroke();
}

void draw() {
  // background(200); // comparions with/without background() function
  ellipse(mouseX, mouseY, 80, 80);
}
