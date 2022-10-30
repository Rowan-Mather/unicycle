void action(String id) {
  switch (id) {
    case "timer":
      print("timer");
      page = "timer"; 
      break;
    case "rota":
      print("rota");
      page = "rota"; 
      break;
    case "home":
      print("home");
      page = "home"; 
      break;
    case "checklist":
      print("check");
      page = "checklist"; 
      break;
    case "spin":
      wheelRot += 1; //currently not being accessed
      break;
    case "kitchen":
      job = "kitchen"; //currently not being accessed
      break;
    case "bin":
      job = "bin"; //currently not being accessed
      break;
    case "other":
      job = "other"; //currently not being accessed
      break;
    //case "hoover":
    //  job = "hoover"; //currently not being accessed
    //  break;

}
}