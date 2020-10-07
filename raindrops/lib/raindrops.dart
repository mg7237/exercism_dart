class Raindrops {
  String convert(int input) {
    String returnStr = "";
    if (input % 3 == 0) {
      returnStr += "Pling";
    }
    if (input % 5 == 0) {
      returnStr += "Plang";
    }
    if (input % 7 == 0) {
      returnStr += "Plong";
    }
    if (returnStr == "") {
      returnStr = input.toString();
    }
    return returnStr;
  }
}
