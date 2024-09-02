class Gamecontroller {
  int flipCount = 0;
  int score = 0;
  float timer = 0;

  Gamecontroller() {
  }

  void GameTurn() {
    switch(flipCount) {
    case 0: 
      for (int i = 0; i<b.b.length; i++) {
        for (int j = 0; j<b.b.length; j++) {
          if (b.b[i][j].isFlipped() == false) {
            b.b[i][j].Click();
          }
        }
      }
      break;
    case 1: 

      for (int i = 0; i<b.b.length; i++) {
        for (int j = 0; j<b.b.length; j++) {
          if (b.b[i][j].isFlipped() == false) {
            b.b[i][j].Click();
          }
        }
      }
      break;
    case 2: 
      for (int i = 0; i<b.b.length; i++) {
        for (int j = 0; j<b.b.length; j++) {
          if (b.b[i][j].isFlipped() == true) {
            b.b[i][j].flip();
            flipCount = 0;
          }
        }
      }
      break;
    }
    println("F "+flipCount);
    //flipCount++;
    println(flipCount);
  }

  void setFlipCount() {
    flipCount++;
  }
}
