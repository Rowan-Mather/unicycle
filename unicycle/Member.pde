static class Member {
  String name;
  public static int num = 0;
  float time;
  
  Member(String name) {
    this.name = name; 
    this.time = time;
    num++;
  }
  
  String getName() {
    return this.name;
  }
  
  int getNum() {
    return num;
  }
  
  float getTime() {
    return time;
  }
  
  void setTime(float time) {
    this.time = time;
  }
}