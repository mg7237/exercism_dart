class RnaTranscription {
  String toRna(String input) {
    String returnString = "";
    for (int i = 0; i< input.length ; i++) {
      if (input[i] == "C") {
        returnString += "G";
      } else if (input[i] == "G") {
        returnString += "C";
      } else if (input[i] == "T") {
        returnString += "A";
      } else if (input[i] == "A") {
        returnString += "U";
      }
    }
    return returnString;
  }
}
