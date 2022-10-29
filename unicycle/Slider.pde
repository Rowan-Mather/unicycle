class Slider extends Button {
  boolean enable = false;
  
  Slider(int x, int y, int w, int h, boolean show, boolean enable) {
    super(x, y, w, h, show);
    this.enable = enable;
  }

  void drawy() {
    if (show) {
    fill(60,76,92); //navy
    rect(50 + x,150 + y,300,75,20,20,20,20); //xpos,ypos,width,height,curve
    if(!enable) {
      fill(158,172,180); //blue
      rect(60 + x,160 + y,280,55,20,20,20,20);
      fill(229,236,236); //white
      ellipse(50+x+75/2,150+y+75/2,65,65);
    } else {
      fill(236,204,204); //pink
      rect(60 + x,160 + y,280,55,20,20,20,20);
      fill(229,236,236); //white
      ellipse(350+x-75/2,150+y+75/2,65,65);
    }
    }
  }
}