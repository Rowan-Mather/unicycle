class Slider{
  String id;
  String text;
  boolean show = false;
  boolean here = true;
  int x; int y; 
  int c = 30; int d;
  int w; int h;
  boolean left;
  
  Slider (String id, int x, int y, int w, int h, String text, boolean left){
    this.id = id;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.d = (80*h)/100;
    this.text = text;
    this.left = left;
    
  }
  
  Slider (String id, int x, int y, int w, int h, boolean here, String text, boolean left){
    this.id = id;
    this.here = here;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.d = (80*h)/100;
    this.text = text;
    this.left = left;
  }
  
  boolean clicked() {
    if (!show) return false;
    if ((mouseX >= x) && (mouseX <= x+w) && (mouseY >= y) && (mouseY <= y+h)) {
      here = !here;
      return true;
    }
    return false;
  }
  
  void show() { show = true; }
  void hide() { show = false; }
  
  void drawy(){
    if (show) {
      fill(black);
      strokeWeight(0.05*d);
      rectMode(CORNER);
      int xpos = x+w+5;
      if (left) {textAlign(RIGHT, TOP); xpos = x-5;}
      else textAlign(LEFT, TOP);
      textSize(h/2);
      text(text, xpos, y+10);
      if(here){
        fill(blue);
        rect(x,y,w,h,60);
        stroke(black); //black
        fill(white); //white
        strokeWeight(0.05*d);
        ellipse(x+((50*h)/100),y+h/2,d,d);
        strokeWeight(0);
      }else{
        fill(red);
        rect(x,y,w,h,60);
        stroke(black);
        fill(white);
        strokeWeight(0.05*d);
        ellipse(w+x-((50*h)/100),y+h/2,d,d);
        strokeWeight(0);
      }
    }
  }
}