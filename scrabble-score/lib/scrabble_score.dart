
  int score(String word) {
    List<String> alphabets = word.split(""); 
    int returnValue = 0;
    int i;
    for (i=0;i< word.length;i++) {
      returnValue += charValue(alphabets[i]);
    }
    return returnValue;
  }

  int charValue(String char) {
    switch(char.toUpperCase()) {
      case "A": return 1;
      case "E": return 1;
      case "I": return 1;
      case "O": return 1;
      case "U": return 1;
      case "L": return 1;
      case "N": return 1;
      case "R": return 1;
      case "S": return 1;
      case "T": return 1;
      case "D": return 2;
      case "G": return 2;
      case "B": return 3;
      case "C": return 3;
      case "M": return 3;
      case "P": return 3;
      case "F": return 4;
      case "H": return 4;
      case "V": return 4;
      case "W": return 4;
      case "Y": return 4;
      case "K": return 5;
      case "J": return 8;
      case "X": return 8;
      case "Q": return 10;
      case "Z": return 10;
      default: return 0;
    }
  }

