import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int input) {
    int workingSum =0;

    for (int i=0 ; i<input; i++) {
      workingSum += i + 1;
    }
    return pow(workingSum,2).toInt();
  }
  int sumOfSquares(int input) {
    int sumOfSquares = 0;
    for (int i=0 ; i<input; i++) {
      sumOfSquares += pow(i+1,2).toInt();
    }
    return sumOfSquares;
  }
  int differenceOfSquares(int input) {
    return squareOfSum(input) - sumOfSquares(input);
  }
}
