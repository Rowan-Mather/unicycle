String page = "home";
ArrayList<Slider> sliders = new ArrayList<Slider>();
boolean update = true;

void setup() {
  size(800,650);
  background(black);
  home();
}

void draw() {
  if (update) {
    clear();
    update_home();
    update = false;
  }
}

void mouseClicked() {
  boolean clickObj = false;
  /*
  if (!clickObj) {
    for (Button b : buttons) {
      if (b.clicked()) {
        clickObj = true;
        break;
      }
    }
  }
  */
  if (!clickObj) {
    for (Slider s : sliders) {
      if (s.clicked()) {
        clickObj = true;
        update = true;
        break;
      }
    }
  }
}

void home() {
  int in = width/10;
  sliders.add(new Slider(in,int(in*1.5),in*3,in, true));
  sliders.add(new Slider(in,int(in*3),in*3,in, true));
  sliders.add(new Slider(in,int(in*4.5),in*3,in, true));
  sliders.add(new Slider(in,int(in*6),in*3,in, true));
  sliders.add(new Slider(in,int(in*7.5),in*3,in, true));
  sliders.add(new Slider(in,int(in*9),in*3,in, true));
}

void update_home() {
  int in = width/10;
  textSize(in);
  textAlign(LEFT);
  fill(pink);
  
  text("HOME", width/2, in);
  int in2 = width/20;
  Button timerB = new Button(in2, in2, in*2, in2, "Timer");
  timerB.drawy();
  Button a = new Button(in2*6, in2, in*2, in2, "a");
  a.drawy();
  Button b = new Button(in2*16, in2, in*2, in2, "b");
  b.drawy();
  Button c = new Button(in2*21, in2, in*2, in2, "c");
  c.drawy();
  
  for (Slider s : sliders) {
    s.drawy();
  }  
}