class Diamond {
  List<String> alphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  List<String> rows(String letter) {
    int index = alphabet.indexOf(letter.toUpperCase());
    List<String> result = [];

    for (int i = 0; i <= index; i++) {
      String loopLetter = alphabet[i];

      if (i == 0) {
        result.add(loopLetter.padLeft(index + 1).padRight((index * 2) + 1));
        continue;
      }
      int leftPad = (index - i) + 1;
      int rightPad = index;

      String leftBit = loopLetter.padLeft(leftPad).padRight(rightPad);
      String rightBit = loopLetter.padRight(leftPad).padLeft(rightPad);

      result.add(leftBit + " " + rightBit);
    }

    List<String> reversed = result.reversed.toList();
    reversed.removeAt(0);
    return result + reversed;
  }
}