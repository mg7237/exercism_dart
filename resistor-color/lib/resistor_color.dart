class InputException implements Exception { 
   String errMsg() => 'Integer value not within 0-9'; 
}  

class    ResistorColor {
  
  List<String> ColorMapping = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];
   
   int  colorCode(String color)  {
      int i;
      int returnValue = -1;
      for (i = 0; i < ColorMapping.length ; i++) {
        if (ColorMapping[i] == color ) {
          returnValue = i;
        } 
      }
      if (returnValue == -1) {
        throw new InputException();
      }
      return returnValue;
    }

    List<String> get colors {
      return ColorMapping;
    }
}
