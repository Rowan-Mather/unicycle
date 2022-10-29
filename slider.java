class Slider{
  boolean here = true; //slider value of here or not
  int x; int y; int c = 20; int d = 65;
  int w1 = 300; int h1 = 75; //width and height values of outer rect
  int w2 = 280; int h2 = 55; //width and height values of inner rect
  
  Slider (int x, int y){
    //initialise within the page
    this.x = 50 + x;
    this.y = 150 + y;
  }
  
  Slider (int x, int y, boolean here){
    this.here = here;
    this.x = 50 + x;
    this.y = 150 + y;
  }
  
  void clicked() {
    //edit truth value of slider
    if ((mouseX >= x) && (mouseX <= x+w1) && (mouseY >= y) && (mouseY <= y+h1)) {
      here = true;
    }
    here = false;
  }
  
  void drawy(){
    /*Outer Rectangle*/
    fill(navy);
    rect(x,y,w1,h1,c,c,c,c);
    if(here){
      /*Inner Rectangle*/
      fill(blue);
      rect(x + 10,y + 10,w2,h2,c,c,c,c);
      /*Button*/
      stroke(black);
      fill(white);
      strokeWeight(4);
      ellipse(x+h1/2,y+h1/2,d,d);
      strokeWeight(0);
    }else{
      /*Inner Rectangle*/
      fill(red);
      rect(x + 10,y + 10,w2,h2,c,c,c,c);
      /*Button*/
      stroke(black);
      fill(white);
      strokeWeight(4);
      ellipse(w1+x-h1/2,y+h1/2,65,65);
      strokeWeight(0);
    }
  }
}
