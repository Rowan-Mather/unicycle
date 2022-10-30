class Leaderboard {
  int x, y, w, h, num;
  boolean show;
  
  // Constructor - size, pos 
  Leaderboard(int x, int y, int w, int h, int num, boolean show) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.num = num;
  }
  
  void show() { show = true; }
  void hide() { show = false; }
  
  void drawy() { 
    if (show) {
      //rectMode(CENTER);
      // Main section
      fill(red);
      rect(x, y, w, h, 5);;
      // Top banner
      fill(white);
      rect(x, y, w, h * 0.2, 5);
      fill(0);
      text("Leaderboard", x +w/5, y+20);
    }
  }
}