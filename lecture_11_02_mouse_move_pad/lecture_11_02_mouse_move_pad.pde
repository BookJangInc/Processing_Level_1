int padX, padY;
int padWidth, padHeight;

void setup() {
  size(800, 600);
  padWidth = 200;
  padHeight = 20;
  padY = height - padHeight;
}

void draw() {
  background(200);
  padX = mouseX - 100;
  rect(padX, padY, padWidth, padHeight);
}
