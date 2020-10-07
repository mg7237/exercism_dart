class MatchingBrackets1 {
  bool isPaired(String input) {
    Map<String, int> checkListCounter = {"[": 0, "{" : 0, "(":0 };
    Map<String,String> charsToCheckClose = {"]" :"[" , "}": "{" , ")": "("};

    for (int i=0 ; i < input.length; i++) {
      print(checkListCounter.containsKey(input[i]));
      print(checkListCounter[input[i]]);
      if (checkListCounter.containsKey(input[i]) ) {
        print(checkListCounter[input[i]]); 
        checkListCounter[input[i]]++; 
        print(checkListCounter[input[i]]); 
      } else if (charsToCheckClose.containsKey(input[i])) {
        print("checkListCounter[input[i]] ${charsToCheckClose[input[i]]}");
        checkListCounter[charsToCheckClose[input[i]]]--;
        if (checkListCounter[charsToCheckClose[input[i]]] < 0) {
          return false;
        }
      }
    }
    bool isT = true;
    checkListCounter.forEach((key, value) {
      print("MMM1212M $key,,, $value");
      if (value != 0) {
        print("MMMM $key,,, $value");
        isT = false;
      } 
     }); 
     print(checkListCounter) ;  
    return isT;
  }
}
