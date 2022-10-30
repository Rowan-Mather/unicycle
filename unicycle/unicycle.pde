String page = "home";
ArrayList<Slider> sliders = new ArrayList<Slider>();
ArrayList<Button> buttons = new ArrayList<Button>();
boolean update = true;

void setup() {
  size(1000,600);
  background(black);
  home();
  update();
}

int c = 0;
void draw() {
  c++;
  if(c%700 == 0) topTip();
}

void update() {
  clear();
  menu();
  topTip();
  for (Button b : buttons) {
    b.drawy();
  }
  for (Slider s : sliders) {
    s.drawy();
  }
}

void mouseClicked() {
  String clickObj = "";
  if (clickObj == "") {
    for (Button b : buttons) {
      if (b.clicked()) {
        clickObj = b.id;
        break;
      }
    }
  }
  if (clickObj == "") {
    for (Slider s : sliders) {
      if (s.clicked()) {
        clickObj = s.id;
        break;
      }
    }
  }
  action(clickObj);
}

void home() {
  int in = width/10;
  sliders.clear();

  sliders.add(new Slider("ru",in,int(in*3),in*3,in, true));
  sliders.add(new Slider("ry",in,int(in*4.5),in*3,in, true));
  sliders.add(new Slider("sa",in,int(in*6),in*3,in, true));
  sliders.add(new Slider("po",in,int(in*7.5),in*3,in, true));
  sliders.add(new Slider("lu",in,int(in*9),in*3,in, true));
}