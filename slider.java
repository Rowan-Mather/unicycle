class Slider{
  boolean here = true;
  int x; int y; 
  int c = 30; int d;
  int w1; int h1;
  int w2; int h2;
  
  Slider (int x, int y, int w, int h){
    this.x = x;
    this.y = y;
    this.w1 = w;
    this.w2 = w-(w/100);
    this.h1 = h;
    this.h2 = h-(h/100);
    this.d = h2;
  }
  
  Slider (int x, int y, int w, int h, boolean here){
    this.here = here;
    this.x = x;
    this.y = y;
    this.w1 = w;
    this.w2 = w-20;
    this.h1 = h;
    this.h2 = h-20;
    this.d = h1-10;
  }
  
  void clicked() {
    if ((mouseX >= x) && (mouseX <= x+w1) && (mouseY >= y) && (mouseY <= y+h1)) {
      here = true;
    }
    here = false;
  }
  void drawy(){
    fill(navy);
    rect(x,y,w1,h1,c);
    if(here){
      fill(blue);
      rect(x + 10,y + 10,w2,h2,c);
      stroke(black); //black
      fill(white); //white
      strokeWeight(4);
      ellipse(x+h1/2,y+h1/2,d,d);
      strokeWeight(0);
    }else{
      fill(red); //red
      rect(x + 10,y + 10,w2,h2,c);
      stroke(black); //black
      fill(white); //white
      strokeWeight(4);
      ellipse(w1+x-h1/2,y+h1/2,d,d);
      strokeWeight(0);
    }
  }
}
