class Gamecontroller {
  int flipCount = 0;
  int score = 0;
  float timer = 0;

  Gamecontroller() {
  }

  void GameTurn() {
    switch(flipCount) {
    case 0: 
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
