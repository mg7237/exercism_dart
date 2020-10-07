class Leap {
  bool leapYear(int year) {
    bool leap = false;
    if (year~/400 == year/400) {
      leap = true;
    } else if ((year~/ 100) != (year / 100) && (year~/ 4) == (year / 4)) {
        leap = true;
    }
    return leap;
  }
}
