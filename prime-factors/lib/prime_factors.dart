class PrimeFactors {
  List<int> factors(int input) {
    List<int> returnList = [];
    int i = 2;
    bool complete = false;
    if (input <2 ) {
      return returnList;
    }
    while (!complete) {
      if(input%i == 0) {
          returnList.add(i);
          input = input~/i;
          if (input == 1) {
            complete = true;
          }
      } else {
        i++;
      }
    }
    return returnList;
  }
}
