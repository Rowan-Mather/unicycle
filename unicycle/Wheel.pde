class Wheel {
  int x; int y;
  int r; 
  String[] chores;
  
  Wheel(int x, int y, int r, String[] chores) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.chores = chores;
  }
  
  void drawy() {
    fill(mauve);
    ellipse(x, y, r, r);
    fill(black);
    pushMatrix();
    translate(x,y);
    for (int i = 0; i < chores.length; i++) {
      rotate(TWO_PI/chores.length);
      textSize(r/10);
      text(chores[i], r/10, 0);
    }
    popMatrix();
  }
}