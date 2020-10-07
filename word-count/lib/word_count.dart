class WordCount {
  RegExp allowedSymbols = RegExp(r"\b([a-z0-9']+)\b");
  Map<String, int> countWords(String wordsInput) {
    Map<String, int> wordMap = {};
    Iterable<Match> matches = allowedSymbols.allMatches(wordsInput.toLowerCase());

    for(Match match in matches) {
      String wordMatch = match.group(0);

      if(wordMap.containsKey(wordMatch)) {
        wordMap[wordMatch] += 1;
      }
      wordMap.putIfAbsent(wordMatch, () => 1);
    }
    return wordMap;
  }
}