Button[] buttons = new Button[] { 
  new Button(0,0,50,50, true),
  new Button(100,100,50,20, true)
};

void setup() {
  size(500,500);
}

void draw() {
  Wheel wheel = new Wheel(width/2, width/2, 300, new String[] 
    {"hi", "hello", "more", "things", "yay"}); 
  wheel.drawy();
  for (Button b : buttons) {
    b.drawy();
  }
}

void mouseClicked() {

}