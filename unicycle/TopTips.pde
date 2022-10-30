String[] topTips = {"Washing out dirty recycling makes it recyclable!",
                    "Leave a hot water bottle under your duvet to warm up your bed!",
                    "Batch cooking for the week will save you time and energy!",
                    "Use WiFi over Mobile data where possible, as data may be over twice as energy-intensive!",
                    "Running a FULL dishwasher at low temperature could reduce water usage compared to hand washing!",
                    "Wash your clothes at 30 degrees to save energy and minimise CO2 emissions!",
                    "Make sure to replace old halogen lightbulbs with LEDs!",
                    "Switch off lights wherever possible!",
                    "Remember to turn plugs off at the switch when out of use!",
                    "Improve insulation on single glaze windows by covering with bubble wrap!",
                    "Eat less meat where possible to reduce your carbon footprint and cheapen your weekly shop!",
                    "Shop second-hand wherever you can to give old things new life!",
                    "Wearing thermal socks will help you to retain warmth!",
                    "Using a microwave could be more energy efficient than an oven!"};
                    
void topTip() {
  rectMode(CORNER);
  fill(navy);
  rect(0, 0, wid, hei/8);
  fill(white);
  textSize(hei/24);
  textAlign(LEFT, CENTER);
  text("Top Tips:", wid/65, hei/19);
  textSize(hei/28);
  int i = (c/700)%(topTips.length);
  text(topTips[i], wid/6.7, hei/18);
}