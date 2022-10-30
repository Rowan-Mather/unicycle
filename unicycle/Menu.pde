void menu() {
  int shft = hei/8;
  fill(white);
  rect(0, shft, wid, shft);
  fill(pink);
  textSize(hei/18);
  textAlign(CENTER, CENTER);
  text(page, wid/2, shft*1.4);

  buttons.clear();
  buttons.add(new Button("timer", wid/10, int(shft*1.5), wid/15, hei/20, "Timer"));
  buttons.add(new Button("rota", wid/10*3, int(shft*1.5), wid/15, hei/20, "Rota"));
  buttons.add(new Button("b", wid/10*7, int(shft*1.5), wid/15, hei/20, "b"));
  buttons.add(new Button("c", wid/10*9, int(shft*1.5), wid/15, hei/20, "c"));

}