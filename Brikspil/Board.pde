class Board {
  Brik[][] b;
  Board(int row) {
    if (row >1) {
      b = new Brik[row][row];
      for (int i = 0; i<b.length; i++) {
        for (int j = 0; j<b.length; j++) {
          b[i][j] = new Brik(""+i+j);
          b[i][j].setPos(new PVector(100+(110*i), 100+(100*j)));
          b[i][j].setImage("blacklego.png");
          b[i][j].setBackside("mads.png");
        }
      }
    } else print("Du er et Fjols");
  }
  
  void display(){
  for (int i = 0; i<b.length; i++) {
    for (int j = 0; j<b.length; j++) {
      b[i][j].display();
    }
  }
  
  
  }
  
  
}
