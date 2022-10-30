/*String[] KitchenJobs = {"Clear the Toaster Crumb Tray",
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
                    "Empty composte"};*/

/*void draw() {
  for(int i = 0; i < KitchenJobs.length; i++){
    TickBox test = new TickBox(100, 100 + 80*i, 50, KitchenJobs[i]);
    test.drawy();
  }
}*/

class TickBox {
  boolean show = false;
  int x;
  int y;
  int r;
  String job;
  boolean ticked = true;

  TickBox(int x, int y, int r, String job) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.job = job;
  }
  
  void show() { show = true; }
  void hide() { show = false; }

  void drawy() {
    if (show) {
      if (ticked) {
        fill(blue);
        stroke(light_navy);
        rect(x, y, r, r);
        strokeWeight(r/10);
      } else {
        fill(red);
        stroke(light_navy);
        rect(x, y, r, r);
        strokeWeight(r/10);
      }
      fill(white);
      textSize(r);
      textAlign(LEFT,CENTER);
      text(" : " + job, (x + 1.25*r), y + 0.35*r);
    }
  }

  boolean clicked() {
    if ((mouseX >= x) && (mouseX <= x+r) && (mouseY >= y) && (mouseY <= y+r)) {
      ticked = !ticked;
      return true;
    }
    return false;
  }
}