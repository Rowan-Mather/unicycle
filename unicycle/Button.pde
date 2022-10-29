class Button {
  int x; int y;
  int w; int h; 
  String text = "";
  Button(int x, int y, int w, int h, String text) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
  }
  
  boolean clicked() {
    if ((mouseX >= x) && (mouseX <= x+w) && (mouseY >= y) && (mouseY <= y+h)) {
      return true;
    }
    return false;
  } 
  
  void drawy() {
    stroke(navy);
    fill(light_navy);
    strokeWeight(5);
    rect(x,y,w,h,20);
    
    textSize(h/2);
    fill(black);
    textAlign(CENTER);
    text(text, x+w/2, y+h*2/3);
  }
}