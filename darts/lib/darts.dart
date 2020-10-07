import 'dart:math';

class Darts {
  int score(double x, double y) {
    x = x.abs();
    y = y.abs();
    double radius = sqrt(x * x + y * y); 
    if (radius<= 1) {
      return 10;
    } else if (radius<= 5) {
      return 5;
    } else if (radius<= 10) {
      return 1;
    } 
    return 0;
  }
}
