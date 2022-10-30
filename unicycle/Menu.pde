PImage logo;
PImage logo2;
void menu() {
  logo = loadImage("logo.PNG");
  logo2 = loadImage("logo2.PNG");
  imageMode(CENTER);
  image(logo, 900, hei/9*7.8, hei/3.4, hei/3.5);
  image(logo2, 100, hei/9*7.8, hei/3.4, hei/3.5);
  
  rectMode(CORNER);
  int shft = hei/8;
  fill(blue);
  rect(0, shft, wid, shft);
  fill(black);
  textSize(hei/18);
  textAlign(CENTER, CENTER);
  text(page, wid/2, shft*1.4);
  
  for(int i = 0; i < 4; i++){
     buttons.get(i).show();
  }
}