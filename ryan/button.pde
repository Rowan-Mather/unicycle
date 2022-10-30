class stopButton {
  int x, y, h, w;
  
  stopButton(int x, int y, int h, int w) {
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
  }
  
  void create() {
    fill(0);
    rect(x, y, h, w);
    fill(0);
    text("Stop", x, y);
  }
}
