class Button {
  String id;
  boolean show;
  int x; int y;
  int w; int h; 
  String text = "";
  Button(String id, int x, int y, int w, int h, String text) {
    this.id = id;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
  }
  
  boolean clicked() {
    if (!show) return false;
    if ((mouseX >= x) && (mouseX <= x+w) && (mouseY >= y) && (mouseY <= y+h)) {
      return true;
    }
    return false;
  } 
  
  void show() { show = true; }
  void hide() { show = false; }
  
  void drawy() {
    if (show) {
      rectMode(CENTER);
      stroke(light_navy);
      fill(blue);
      strokeWeight(3);
      rect(x,y,w,h,20);
      
      textSize(h/2);
      fill(black);
      textAlign(CENTER, CENTER);
      text(text, x, y-2);
    }
  }
}