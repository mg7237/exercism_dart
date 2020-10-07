class PhoneNumber {
  String clean(String input) {
    RegExp exp = RegExp(r"([a-zA-z])");
    Iterable<RegExpMatch> matches = exp.allMatches(input);
    if (matches.length > 0) {
      throw FormatException("letters not permitted");
    }
    exp = RegExp(r"([\*s\?\@\:\,\!\@])");
    matches = exp.allMatches(input);
    if (matches.length > 0) {
      throw FormatException("punctuations not permitted");
    }
    input = input.replaceAll(RegExp(r"[^0-9]"), "");
    if (input.length == 11 && input.substring(0,1) != "1") {
      throw FormatException("11 digits must start with 1");
    }
    if (input.length > 11) {
      throw FormatException("more than 11 digits");
    }
    if (input.length == 11 && input.substring(0,1) != "1") {
      throw FormatException("11 digits must start with 1");
    }
    if (input.length == 11) {
      input = input.substring(1);
    } 
    if (input.length < 10 ) {
      throw FormatException("incorrect number of digits");
    } else if (input.substring(0,1) == "0")  {
      throw FormatException("area code cannot start with zero");
    } else if (input.substring(0,1) == "1")  {
      throw FormatException("area code cannot start with one");
    } else if (input.substring(3,4) == "0")  {
      throw FormatException("exchange code cannot start with zero");
    } else if (input.substring(3,4) == "1")  {
      throw FormatException("exchange code cannot start with one");
    }
    return input;
  }
}
