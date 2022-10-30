class Leaderboard {
  int x, y, w, h, num;
  
  // Constructor - size, pos 
  Leaderboard(int x, int y, int w, int h, int num) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.num = num;
  }
  
  void drawy() {  
    // Main section
    fill(255, 0, 0);
    rect(x, y, w, h, 5);
    
    // Top banner
    fill(255);
    rect(x, y, w, h * 0.2, 5);
    fill(0);
    text("Leaderboard", x + (w/3), y + (h/10));
  }
}
