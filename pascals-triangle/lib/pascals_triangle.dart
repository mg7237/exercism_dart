class PascalsTriangle {
  List<List<int>> rows(int number) {
    List<List<int>> returnList = [];
    List<int> row = []; 
    if (number < 1) {
      return returnList;
    }
    returnList = [[]];
    returnList[0].add(1);
    
    for (int i = 1; i<= number-1;i++) {
      row = [];
      row.add(1);
      for (int j=1;j <i;j++ ) {
        row.add(returnList[i-1][j-1] + returnList[i-1][j]);
      }
      row.add(1);
      returnList.add(row);
    }
    return returnList;
  }
}
