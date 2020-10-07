class BeerSong {
  List<String> recite(int position, int verses) {
    List<String> returnValue = [];
    if (position < 0 || position > 99 || verses > 99 || verses <= 0) {
      print("Invalid params");
      return returnValue;
    }
    for (int i = 0 ; i < verses; i++) {
      int versePosition = position;
      List<String> verse = prepareVerse(versePosition);
      versePosition--;
      returnValue.add(verse[0]);
      returnValue.add(verse[1]);
      if (i != verses - 1) {
        returnValue.add("");
      } 
      if (versePosition == 0) {
        position = 100;
      }
    }
    
    return returnValue;
  }
  List<String> prepareVerse(int position) {
    final String string1 = " bottles of beer on the wall, ";
    final String string2 = " bottles of beer.";
    final String string3 = "Take one down and pass it around, ";
    final String string4 =  " bottle of beer on the wall.";
    final String string5 =  " bottles of beer on the wall.";
 
    List<String> returnStringList = [];

    if (position == 0) {
      returnStringList = ["No more bottles of beer on the wall, no more bottles of beer.",
      "Go to the store and buy some more, 99 bottles of beer on the wall."];
    } else if (position == 1) {
      returnStringList = ["1 more bottle of beer on the wall, 1 bottle of beer.",
      "Take it down and pass it around, no more bottles of beer on the wall."];
    } else {
        returnStringList.add(position.toString() + string1 + position.toString() + string2);
        
        if (position == 2) {
          returnStringList.add(string3 + (position - 1).toString() + string4);
        } else {
          returnStringList.add(string3 + (position - 1).toString() + string5);
      }
    }
      return returnStringList;
  }
}
