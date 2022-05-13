int x; // ball's x position

void setup(){
  size(800, 600);
  x = 0;
}

void draw(){
  //background(200);
  ellipse(x, 100, 50, 50);
  x = x + 1;
}
