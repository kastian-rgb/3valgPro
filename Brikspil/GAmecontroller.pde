class Gamecontroller {
  int flipCount = 0;
  int score = 0;
  float timer = 0;

  Gamecontroller() {
  }

  void GameTurn() {
    switch(flipCount) {
    case 0:
      String temp1;
      String temp2;
      int c = 0;
      for (int i = 0; i<b.row; i++) {
        for (int j = 0; j<b.col; j++) {
          if (b.b[i][j].isFlipped() == true && c == 0) {
            temp1=b.b[i][j].navn;
          } else if (b.b[i][j].isFlipped() == true && c == 1) {
          temp2=b.b[i][j].navn;
          }
          if(temp1 == temp2)
          b.b[i][j].isCorrect();
        }
      }
      for (int i = 0; i<b.row; i++) {
        for (int j = 0; j<b.col; j++) {
          if (b.b[i][j].isFlipped() == false) {
            b.b[i][j].Click();
          }
        }
      }
      break;
    case 1: 

      for (int i = 0; i<b.row; i++) {
        for (int j = 0; j<b.col; j++) {
          if (b.b[i][j].isFlipped() == false) {
            b.b[i][j].Click();
          }
          println(b.b[i][j].navn);
        }
      }
      break;
    case 2: 
      for (int i = 0; i<b.row; i++) {
        for (int j = 0; j<b.col; j++) {
          if (b.b[i][j].isFlipped() == true) {
            b.b[i][j].flip();
            flipCount = 0;
          }
        }
      }
      break;
    }
  }

  void setFlipCount() {
    flipCount++;
  }
}
