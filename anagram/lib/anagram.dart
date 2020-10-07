class Anagram {
  List<String> findAnagrams(String input, List<String>checkList) {
    List<String> returnList = [];
    Map<String,int> chars = Map();
    Map<String,int> compareChars = Map();
    bool boolCompare = true;
    String compareWord = "";
    
    input = input.toUpperCase();
    
    for (int i= 0;i< input.length;i++) {
      if (chars.containsKey(input[i])) {
        chars[input[i]] ++; 
      } else {
        chars[input[i]] = 1;
      }
    }

    for (int i= 0;i< checkList.length;i++) {
      compareWord = checkList[i].toUpperCase();
      if (input.length == checkList[i].length && compareWord != input) {
        compareChars = {};
        for (int j = 0; j< checkList[i].length;j++) {
          if (compareChars.containsKey(compareWord[j])) {
            compareChars[compareWord[j]] ++; 
          } else {
            compareChars[compareWord[j]] = 1;
          }
        }

        boolCompare = true;
        chars.forEach((key, value)  {
          if (chars[key] != compareChars[key]) {
            boolCompare = false;
          }
        });
        if (boolCompare) {
          returnList.add(checkList[i]);
        }
      }
    }  
    return returnList;
  }
}