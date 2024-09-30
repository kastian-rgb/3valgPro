
Gamecontroller g;

void setup() {
  size(1920, 1080);
  g = new Gamecontroller(new Board(2, 3, "image"));

  textSize(32);
}



void draw() {
  background(0);
  g.display();
  text("To reset game press Y", width/3, height-200);
}

void mousePressed() {

  g.GameTurn();
}


void keyPressed() {
  println(keyCode);
  if (keyCode == 89)
    setup();
}
