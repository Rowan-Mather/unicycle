//booooooooooooooooolean
int wid = 1000;
int hei = 600;
//colours
color pink = color(236,204,204);
color red = color(180,52,92);
color mauve = color(156,124,132);
color black = color(4,28,52);
color maroon = color(84,36,60);
color white = color(229,236,236);
color navy = color(60,76,92);
color blue = color(158,172,180);
color light_navy = color(76,92,108);

String page = "home";
String job = "bin";

ArrayList<Slider> sliders = new ArrayList<Slider>();
ArrayList<Button> buttons = new ArrayList<Button>();
Wheel wheel;
int wheelRot = 0;

//boolean update = true;
String[] KitchenJobs = {"Clear the Toaster Crumb Tray",
                        "Descale the Kettle",
                        "Wipe down the oven/microwave",
                        "Wash the Hob",
                        "Disinfect countertops",
                        "Clean chopping boards"};
String[] MoppingJobs = {"Mop the Kitchen",
                        "Mop the back entrance"};
String[] HooverJobs = {"Hoover Upstairs",
                      "Hoover Downstairs",
                      "Hoover Stairs"};
String[] BinJobs = {"Take out main bins",
                    "Empty general waste",
                    "Empty recycling",
                    "Empty bag bag",
                    "Empty composte"};
                    
Member ryan = new Member("(1) Ryan");
Member ruby = new Member("(2) Ruby");
Member saskia = new Member("(3) Saskia");
Member rowan = new Member("(4) Rowan");
Member luca = new Member("(5) Luca");
Member poppy = new Member("(6) Poppy");

ArrayList <Member> members = new ArrayList<Member>();
String activeName = "None selected";

Leaderboard board = new Leaderboard(wid/2-100, hei/2-130, 200, 350, 6, false);

// Create new stop button
// ! Position WIP
//stopButton btn = new stopButton(width/2 - 150, height/2 - 100, 150, 100);

StopWatchTimer timer = new StopWatchTimer();

float time;
float[] timeArr = new float[6];
int prevKey;

void setup() {
  size(1000,600);
  background(white);
  
  members.add(ryan);
  members.add(ruby);
  members.add(saskia);
  members.add(rowan);
  members.add(luca);
  members.add(poppy);
  
  //menu
  int shft = hei/8;
  buttons.add(new Button("timer", wid/10, int(shft*1.5), wid/10, hei/20, "Timer"));
  buttons.get(0).show();
  buttons.add(new Button("rota", wid/10*3, int(shft*1.5), wid/10, hei/20, "Rota"));
  buttons.get(1).show();
  buttons.add(new Button("checklist", wid/10*7, int(shft*1.5), wid/10, hei/20, "Checklist"));
  buttons.get(2).show();
  buttons.add(new Button("home", wid/10*9, int(shft*1.5), wid/10, hei/20, "Home"));
  buttons.get(3).show();
  
  //home page
  int in = wid/17;
  sliders.add(new Slider("ru",in,int(in*3),in*3,in, true, "Ruby", false));
  sliders.add(new Slider("ry",in,int(in*4.5),in*3,in, true, "Ryan", false));
  sliders.add(new Slider("sa",in,int(in*6),in*3,in, true, "Saskia", false));
  sliders.add(new Slider("po",wid-in*4,int(in*3),in*3,in, true, "Poppy", true));
  sliders.add(new Slider("lu",wid-in*4,int(in*4.5),in*3,in, true, "Luca", true));
  sliders.add(new Slider("ro",wid-in*4,int(in*6), in*3,in,true, "Rowan", true));
  
  wheel = new Wheel(wid/2, hei/5*3, hei/2, new String[] {"kitchen","kitchen","mopping","bins","hoovering","hoovering"});
  buttons.add(new Button("spin", wid/2, hei/16*15, wid/15, hei/20, "Rotate"));
  
  for(int i = 0; i < KitchenJobs.length; i++){
        sliders.add(new Slider("tick", 250, 200 + 80*i, 40, 40, KitchenJobs[i], false));
  }
  for(int i = 0; i < BinJobs.length; i++){
        sliders.add(new Slider("tick", 250, 200 + 80*i, 40, 40, BinJobs[i], false));
  }
  for(int i = 0; i < MoppingJobs.length; i++){
        sliders.add(new Slider("tick", 250, 200 + 80*i, 40, 40, MoppingJobs[i], false));
  }
  for(int i = 0; i < HooverJobs.length; i++){
        sliders.add(new Slider("tick", 250, 200 + 80*(i+MoppingJobs.length), 40, 40, HooverJobs[i], false));
  }
  buttons.add(new Button("kitchen", wid/3*2, 280, wid/10, hei/20, "Kitchen"));
  buttons.add(new Button("bin", wid/3*2, 330, wid/10, hei/20, "Bins"));
  buttons.add(new Button("other", wid/3*2, 380, wid/10, hei/20, "Other"));
  //buttons.add(new Button("hoover", wid/3*2, hei/6*5, wid/10, hei/20, "Hoover"));
  update();
}

int c = 0;
void draw() {
  c++;
  topTip();
  //btn.create();
  
  if (page == "timer") {
    board.drawy();
    timer.time(timer);
    
    textAlign(LEFT);
    fill(white);
    int i = 0;
    for (Member p : members) {
      i++;
      text(p.getName(), wid/2-80, 240 + (40 * i));
      
      int minutes = (int) (timeArr[i-1] / (1000*60)) % 60;
      int seconds = (int) (timeArr[i-1] / (1000)) % 60;
      
      text(minutes + ":" + seconds, wid/2+40, 240 + (40 * i));
    }
  }
}

void update() {
  clear();
  background(white);
  board.hide();
  for (Button b : buttons) {
    b.hide();
  }
  for (Slider s : sliders) {
    s.hide();
  }
  menu();
  if (page == "home"){
    fill(red);
    textSize(40);
    textAlign(CENTER,CENTER);
    text("Who is Home?", wid/2,hei/2);
    for(int i = 0; i < 6; i++){
      sliders.get(i).show();
    }
  }
  else if (page == "rota"){
    wheel.drawy(wheelRot);
    buttons.get(4).show();
  }
  else if (page == "checklist"){
    for (int i = 5; i < 8; i++)
      buttons.get(i).show();
    if(job == "kitchen"){
      for(int i = 0; i < KitchenJobs.length; i++){
        //TickBox test = new TickBox(100, 100 + 80*i, 30, KitchenJobs[i]);
 
        //test.drawy();
        sliders.get(i+6).show();
      }
    }
    else if(job == "bin"){
      for(int i = 0; i < BinJobs.length; i++){
        //TickBox test = new TickBox(100, 100 + 80*i, 30, BinJobs[i]);
        //test.drawy();
        sliders.get(i+6+KitchenJobs.length).show();
      }
    }
    else{
      for(int i = 0; i < MoppingJobs.length; i++){
        //TickBox test = new TickBox(100, 100 + 80*i, 30, MoppingJobs[i]);
        //test.drawy();
        sliders.get(i+6+KitchenJobs.length+BinJobs.length).show();
      }
      for(int i = 0; i < HooverJobs.length; i++){
        //TickBox test = new TickBox(100, 100 + 80*(i+MoppingJobs.length), 30, HooverJobs[i]);
        //test.drawy();
        sliders.get(i+6+KitchenJobs.length+BinJobs.length+MoppingJobs.length).show();
      }
    }
  }
  else if (page == "timer"){
    board.show();
    text("Person selected: " + activeName, wid/2, 550);
  }
  
  for (Button b : buttons) {
    b.drawy();
  }
  for (Slider s : sliders) {
    s.drawy();
  }
}

void keyPressed() {
  switch(key) {
    case '1': 
      activeName = "Ryan";
      prevKey = 0;
      break;
    case '2':
      activeName = "Ruby";
      prevKey = 1;
      break;
    case '3':
      activeName = "Saskia";
      prevKey = 2;
      break;
    case '4':
      activeName = "Rowan";
      prevKey = 3;
      break;
    case '5':
      activeName = "Luca";
      prevKey = 4;
      break;
    case '6':
      activeName = "Poppy";
      prevKey = 5;
      break;
    case 's':
      timeArr[prevKey] = timer.getElapsedTime();
  }
  timer.start();
  update();
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
  if (clickObj != "") {
    action(clickObj);
  }
  update();
}