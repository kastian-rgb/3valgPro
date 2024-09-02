Board b;
Gamecontroller g;

void setup() {
  size(1920, 1080);
  g = new Gamecontroller();
  b = new Board(8);
  textSize(32);
}



void draw() {
  background(0);
  b.display();
}

void mousePressed() {
  
  g.GameTurn();
}
