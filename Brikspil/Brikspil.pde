Brik[][] b = new Brik[8][8];

void setup() {
  size(1920, 1080);
  /*  b = new Brik("Fisk");
   b.setPos(new PVector(100,100));
   b.setImage("blacklego.png"); */



  for (int i = 0; i<b.length; i++) {
    for (int j = 0; j<b.length; j++) {
      b[i][j] = new Brik(""+i);
      b[i][j].setPos(new PVector(100+(110*i), 100+(100*j)));
      b[i][j].setImage("blacklego.png");
      b[i][j].setBackside("mads.png");
    }
  }
  textSize(32);
}



void draw() {
  background(0);
  //text(b.navn, b.getPosX(), b.getPosY());
  for (int i = 0; i<b.length; i++) {
    for (int j = 0; j<b.length; j++) {
      b[i][j].display();
    }
  }
}

void mousePressed() {
  for (int i = 0; i<b.length; i++) {
    for (int j = 0; j<b.length; j++) {
      b[i][j].Click();
    }
  }
}
