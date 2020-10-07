String reverse(String inputString) {
  List<String> inputArray = inputString.split("");
  List<String> returnArray = [];
  int i;
  int length = inputArray.length;
  for (i = 0;i < length; i++) {
    returnArray[i] = inputArray[length - i];
  }
  return returnArray.join();
}
