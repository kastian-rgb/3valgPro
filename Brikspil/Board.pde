class Board {
  Brik[][] b;
  JSONArray img;
  JSONObject image;
  JSONObject  back;
  int brik = 1;
  int count = 0;
  int row;
  int col;
  Board(int _row, int _col, String f) {
    row =_row;
    col =_col;
    img = loadJSONArray("data/"+f+".json");

    if ((row*col)%2 == 0) {
      b = new Brik[row][col];
      for (int i =0; i < row; i++) {
        for (int j =0; j < col;j++) {
          count++;
        
          back = img.getJSONObject(0);
          image = img.getJSONObject(brik);

          b[i][j] = new Brik();
          b[i][j].setBackside(back.getString("file"));
          b[i][j].setImage(image.getString("file"));
          b[i][j].setNavn(image.getString("navn"));
          b[i][j].setPos(new PVector(100*i,100*j));
          if (count%2 == 0)
            brik++;
        }
      }
    }
    shuffel(10000);
  }

  void display() {
    for (int i = 0; i<row; i++) {
      for (int j = 0; j<col; j++) {
        println(b[i][j].getPos());
        b[i][j].display();
      }
    }
  }
  
  Brik returnBrik(int _i, int _j){
  
  return b[_i][_j];
  
  }
  
  void shuffel(int s){
  PVector temp;
  for(int i =0; i<s;i++){
    PVector ran1 = new PVector((int)random(0,row), (int)random(0,col));
    PVector ran2 = new PVector((int)random(0,row), (int)random(0,col));
    temp = b[(int)ran1.x][(int)ran1.y].getPos();
    b[(int)ran1.x][(int)ran1.y].setPos(b[(int)ran2.x][(int)ran2.y].getPos());
    b[(int)ran2.x][(int)ran2.y].setPos(temp);
  
  
  }
  
  }
  
}
