Board b;

void setup() {
  size(1920, 1080);
  b = new Board(8);
  textSize(32);
}



void draw() {
  background(0);
  b.display();
}

void mousePressed() {
  for (int i = 0; i<b.b.length; i++) {
    for (int j = 0; j<b.b.length; j++) {
      b.b[i][j].Click();
    }
  }
}
