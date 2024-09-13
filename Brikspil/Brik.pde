class Brik {
  PVector pos;
  PVector vel;
  PImage img;
  PImage img2;
  Boolean isFlipped = false;
  Boolean isCorrect = false;
  String navn;

  Brik() {
  } 

  Brik(String n) {
    navn = n;
  }

  void setPos(PVector p) {
    pos = p;
  }
  void setVel(PVector v) {
    vel = v;
  }
  void setImage(String n) {

    img2 = loadImage("/data/"+n);
    img2.resize(100, 50);
  }
  
  void setBackside(String n) {

    img = loadImage("/data/"+n);
    img.resize(100, 50);
    println("done");
  }
  
  void flip() {

    isFlipped = !isFlipped;
  }
  void setNavn(String s) {
    navn = s;
  }

  float getPosX() {
    return pos.x;
  }

  float getPosY() {
    return pos.y;
  }

  void display() {

    if (isFlipped)
      image(img2, pos.x, pos.y);
    else
      image(img, pos.x, pos.y);
  }

  void Click() {

    if (mouseX > pos.x && mouseX < pos.x+100 && mouseY > pos.y && mouseY< pos.y+50 && !isFlipped) {
      flip();
      g.setFlipCount();
    }
}
  
  boolean isFlipped(){
  return isFlipped;
  }
}
