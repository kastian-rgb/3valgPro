class Gamecontroller {
  int flipCount = 0;
  int score = 0;
  float timer = 0;
  int c = 0;
  Board b;

  Gamecontroller(Board _b) {
    b = _b;
  }

  void GameTurn() {
    switch(flipCount) {
    case 0:
      for (int i = 0; i<b.row; i++) {
        for (int j = 0; j<b.col; j++) {
          if (b.returnBrik(i, j).isFlipped() == false) {
            b.returnBrik(i, j).Click();
          }
        }
      }
      break;
    case 1: 

      for (int i = 0; i<b.row; i++) {
        for (int j = 0; j<b.col; j++) {
          if (b.returnBrik(i, j).isFlipped() == false) {
            b.returnBrik(i, j).Click();
          }
          //println(b.b[i][j].navn);
        }
      }

      break;
    case 2: 
      validate();
      for (int i = 0; i<b.row; i++) {
        for (int j = 0; j<b.col; j++) {
          if (b.returnBrik(i, j).isFlipped() == true && b.returnBrik(i,j).isCorrect == false) {
            b.returnBrik(i, j).flip();
            flipCount = 0;
          }
        }
        flipCount = 0;
      }
      break;
    }
  }

  void setFlipCount() {
    flipCount++;
  }

  void display() {

    b.display();
  }

  void validate() {
    PVector p = null;
    PVector p2 = null;
    int c =0;
    for (int i = 0; i<b.row; i++) {
      for (int j = 0; j<b.col; j++) {
        if (b.returnBrik(i, j).isFlipped() == true && b.returnBrik(i, j).isCorrect == false) {
          if (c == 0) {
            p = new PVector(i, j);
            c++;
          } else if (c == 1) {
            p2 = new PVector(i, j);
           
          }
        }
      }
    }
    if (p != null && p2 != null) {
      if (b.returnBrik((int)p.x, (int)p.y).navn == 
        b.returnBrik((int)p2.x, (int)p2.y).navn) {
          b.returnBrik((int)p.x, (int)p.y).isCorrect = true;
          b.returnBrik((int)p2.x, (int)p2.y).isCorrect = true;
          println(p +" "+p2);
      }
    }
  }
}
