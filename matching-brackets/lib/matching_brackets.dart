class MatchingBrackets {
  bool isPaired(String input) {
    Map<String, String> brackets = {"[" : "]","{" : "}","(": ")"};
    List<String> lifo = [];
    bool matched = true;

    for (int i=0 ; i < input.length; i++) {
      if (brackets.containsKey(input[i]) ) {
        lifo.add(input[i]);
      } else if (brackets.containsValue(input[i])) {
        brackets.forEach((key, value) {
          if ((lifo.isEmpty) || (value == input[i] && lifo.last != key)) {
            matched = false;
          }
        });
        if (matched && lifo.isNotEmpty) {
          lifo.removeLast();
        }
      }
    }
    if (lifo.length != 0) {
      matched = false;
    }
    return matched;
  }
}
