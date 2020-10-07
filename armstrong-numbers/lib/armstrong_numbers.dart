import "dart:math";

class ArmstrongNumbers {
  bool isArmstrongNumber(int checkNumber) {
    String checkString = checkNumber.toString();
    List<String> chars = checkString.split("");
    int charCount = chars.length;
    double armstrongCalculation = 0;
    for (int i=0;i<charCount ; i++) {
      var add = int.parse(chars[i]);
      int charCount = chars.length;
      armstrongCalculation += pow(add,charCount); //math.pow(add, num(charCount));
    }
    
    if (armstrongCalculation == checkNumber ) {
      return true;
    } else {
    return false;
    }
  }
}
