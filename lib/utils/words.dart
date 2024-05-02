Map<String, String> wordsTips = {
  "Apple": "Fruit",
  "Banana": "Fruit",
  "Orange": "Color",
  "Grape": "Fruit",
  "Strawberry": "Fruit",
  "Watermelon": "Fruit",
  "Mango": "Fruit",
  "Pineapple": "Fruit",
  "Blueberry": "Fruit",
  "Kiwi": "Fruit",
};

String randomWord() {
  List<String> wordList = wordsTips.keys.toList();
  wordList.shuffle();
  String word = wordList[0];
  String tip = wordsTips[word]!;

  return "$word.$tip";
}