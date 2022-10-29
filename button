class Button {
  int x; int y;
  int w; int h; 
  boolean show;
  Button(int x, int y, int w, int h, boolean show) {
    this.show = show;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  boolean clicked() {
    if ((mouseX >= x) && (mouseX <= x+w) && (mouseY >= y) && (mouseY <= y+h)) {
      return true;
    }
    return false;
  } 
  
  void drawB() {
    if (show) {
      stroke(navy);
      fill(light_navy);
      strokeWeight(5);
      rect(x,y,w,h,20,20,20,20);
    }
  }
}
