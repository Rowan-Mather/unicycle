Member ryan = new Member("(1) Ryan");
Member ruby = new Member("(2) Ruby");
Member saskia = new Member("(3) Saskia");
Member rowan = new Member("(4) Rowan");
Member luca = new Member("(5) Luca");
Member poppy = new Member("(6) Poppy");

ArrayList <Member> members = new ArrayList<>();

int x = 100;
int y = 100;

int height = 600;
int width = 1000;

String activeName = "None selected";

Leaderboard board = new Leaderboard(x, y, 200, 400, ryan.getNum());

// Create new stop button
// ! Position WIP
//stopButton btn = new stopButton(width/2 - 150, height/2 - 100, 150, 100);

StopWatchTimer timer = new StopWatchTimer();

void setup() {
  size(1000, 600);
  members.add(ryan);
  members.add(ruby);
  members.add(saskia);
  members.add(rowan);
  members.add(luca);
  members.add(poppy);
  
  translate(width/2, height/2);
}

float time;
float[] timeArr = new float[7];
int prevKey;

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
}

void draw() {
  clear();
  background(255);
  //btn.create();
  board.drawy();
  timer.time(timer);
  
  text("Person selected: " + activeName, 500, 500);

  int i = 0;
  for (Member p : members) {
    i++;
    text(p.getName(), 150, 175 + (50 * i));
    
    int minutes = (int) (timeArr[i-1] / (1000*60)) % 60;
    println(minutes);
    int seconds = (int) (timeArr[i-1] / (1000)) % 60;
    println(seconds);
    
    text(minutes + ":" + seconds, 225, 175 + (50 * i));
  }
}
