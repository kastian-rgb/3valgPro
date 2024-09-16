
Gamecontroller g;

void setup() {
  size(1920, 1080);
  g = new Gamecontroller(new Board(2, 3,"image"));
 
  textSize(32);
}



void draw() {
  background(0);
  g.display();
}

void mousePressed() {
  
  g.GameTurn();
}
