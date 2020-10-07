class Bob {
  String response(String inputString) {
    bool question = false;
    bool yell = false;
    if (inputString[inputString.length -1] == '?') {
      question = true;
    } 
    if (inputString.toUpperCase() == inputString) {
      yell = true;
    } 

    if (question && (!yell)) {
      return("Sure.");
    } else
    if ((!question) && yell) {
      return("Whoa, chill out!");
    } else
    if (question && yell) {
      return("Calm down, I know what I'm doing!");
    } else
    if (inputString == "") {
    return("Fine. Be that way!");
    } else {
      return("Whatever.");
    }
  }
}
