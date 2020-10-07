class Acronym {
  String abbreviate(String input) {
    String output = "";
    bool isPrevCharSpace = true;
    input = input.replaceAll(RegExp(r"[-]"), ' ');
    input = input.replaceAll(RegExp(r"[^A-Za-z\s]"), '');
    input = input.replaceAll(RegExp(r"[\s]{2,}"), ' ');
    for (int i = 0; i< input.length;i++) {
      if (isPrevCharSpace) {
        output = output + input.substring(i,i+1).toUpperCase();
      }
      if (input.substring(i,i+1) == " ") {
        isPrevCharSpace = true;
      } else {
        isPrevCharSpace = false;
      }
    }
    return output;
  }
}

