

class Hamming {
  int distance(String dnaA, String dnaB ) {
    int i = 0;
    int distance = 0;

    if (dnaA.length != dnaB.length) {
      throw mustEqual;
    }
    if ((dnaA.length == 0 || dnaB.length == 0) 
    && (dnaA.length != 0 || dnaB.length != 0))  {
      throw noEmptyStrand;
    }
    
    for (i = 0; i < dnaA.length ; i++) {
      if (dnaA[i] != dnaB[i]) {
        distance++;
      }
    }
    return distance;
  }
}

class mustEqual implements Exception {
  String errorMessage() {
    return 'Length of both strands must be equal';
    }
}

class noEmptyStrand implements Exception {
  String errorMessage() {
    return 'Strand data cannot be of 0 chars';
  }
}

