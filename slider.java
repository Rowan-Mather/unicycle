class Slider{
  boolean here = true;
  int x; int y; 
  int c = 30; int d;
  int w; int h;
  
  Slider (int x, int y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.d = (80*h)/100;
  }
  
  Slider (int x, int y, int w, int h, boolean here){
    this.here = here;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.d = (80*h)/100;
  }
  
  void clicked() {
    if ((mouseX >= x) && (mouseX <= x+w) && (mouseY >= y) && (mouseY <= y+h)) {
      here = true;
    }
    here = false;
  }
  void drawy(){
    if(here){
      fill(blue);
      rect(x,y,w,h,6000);
      stroke(black); //black
      fill(white); //white
      strokeWeight(0.05*d);
      ellipse(x+((50*h)/100),y+h/2,d,d);
      strokeWeight(0);
    }else{
      fill(red);
      rect(x,y,w,h,6000);
      stroke(black);
      fill(white);
      strokeWeight(0.05*d);
      ellipse(w+x-((50*h)/100),y+h/2,d,d);
      strokeWeight(0);
    }
  }
}
