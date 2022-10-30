
//String[] chores = {"kitchen","kitchen","mopping","bins","hoovering","hoovering"};

class Wheel {
  int x; int y;
  int r; boolean show = true;
  String[] chores;
  String[] names = {"Ruby", "Saskia", "Rowan", "Ryan", "Poppy", "Luca"};
  
  Wheel(int x, int y, int r, String[] chores) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.chores = chores;
  }
    
  void show() { show = true; }
  void hide() { show = false; }
  
  void drawy(int i) {
    if (show) {
      fill(203, 185, 189);
      int r2 = r+(r/5);
      ellipse(x,y,r2,r2);
      fill(white);
      arc(x, y, r, r, 0, PI/3);
      fill(red);
      arc(x, y, r, r, PI/3, 2*PI/3);
      fill(white);
      arc(x, y, r, r, 2*PI/3, PI);
      fill(red);
      arc(x, y, r, r, PI, 4*PI/3);
      fill(white);
      arc(x, y, r, r, 4*PI/3, 5*PI/3);
      fill(red);
      arc(x, y, r, r, 5*PI/3, TWO_PI);
      //fill(black);
      
      pushMatrix();
      translate(x,y);
      rotate(PI/2);
      popMatrix();
      
      textSize(r/11);
      for (int j = 0; j < names.length; j++) {
        if (j%2 == 0) fill(red);
        else fill(white);
        pushMatrix();
        translate(x,y);
        textAlign(CENTER, CENTER);
        rotate(PI);
        pushMatrix();
        rotate(TWO_PI/names.length*j);
        text(names[j], 0, -(r+(r2/10))/2);
        popMatrix();
        popMatrix();
      }
      
      pushMatrix();
      translate(x,y);
      rotate((PI/chores.length) + i*(TWO_PI/chores.length));
      for (int j = 0; j < chores.length; j++) {
        if (j%2 != wheelRot%2) fill(red);
        else fill(white);
        rotate(TWO_PI/chores.length);
        textSize(r/13);
        textAlign(LEFT,CENTER);
        text(chores[j], r/10, -10);
      }
      popMatrix();
    }
  }
}