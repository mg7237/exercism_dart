class Pangram {
  bool isPangram(String input) {
    Map<String,int> alphabets = {
      "A": 0,
      "B": 0,
      "C": 0,
      "D": 0,
      "E": 0,
      "F": 0,
      "G": 0,
      "H": 0,
      "I": 0,
      "J": 0,
      "K": 0,
      "L": 0,
      "M": 0,
      "N": 0,
      "O": 0,
      "P": 0,
      "Q": 0,
      "R": 0,
      "S": 0,
      "T": 0,
      "U": 0,
      "V": 0,
      "W": 0,
      "X": 0,
      "Y": 0,
      "Z": 0
    };
    int ascValue;
    input = input.toUpperCase();
    
    
    for (int i=0;i < input.length;i++) {
      ascValue = input.codeUnitAt(i);
      if (ascValue >= 65 && ascValue <= 90 ) {
        alphabets[input.substring(i,i+1)]++;
      }
    }
    if (alphabets.containsValue(0)) {
      return false;
    }
    return true;
  }
}
