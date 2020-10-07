class Luhn {
  bool valid(String input) {
    int counter = 0;
    int inputLength;
    int intAtPosition;

    input = input.replaceAll(" ", "");
    inputLength = input.length;
    if (inputLength < 2) {
      return false;
    }
    for (int i = inputLength-1; i>=0; i--) {
      try {
        intAtPosition = int.parse(input.substring(i,i+1));
      } catch(e) {
        return false;
      }
      if ((inputLength-i)%2 == 0) {
			  intAtPosition = intAtPosition * 2;
        if (intAtPosition > 9) {
          intAtPosition = intAtPosition - 9;
        }
      }
      counter += intAtPosition;
    }
    return (counter%10 == 0);
  }
}
