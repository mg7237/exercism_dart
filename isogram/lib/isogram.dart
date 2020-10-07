class Isogram {
  bool isIsogram(String inputString) {
    bool itsogram = true;
    List<String> chars = inputString.split("");
    for (int i=0;i<chars.length;i++) {
      int repetetionIndex = chars.indexWhere((value)=> value == chars[i]);
      if (repetetionIndex != -1) {
        itsogram = false;
        i = chars.length;
      }
    }
    return itsogram;
  }
}
