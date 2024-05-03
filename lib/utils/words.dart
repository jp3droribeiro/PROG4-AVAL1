Map<String, String> wordsTips = {
  "Apple": "Fruit",
  "Banana": "Fruit",
  "Grape": "Fruit",
  "Strawberry": "Fruit",
  "Watermelon": "Fruit",
  "Pineapple": "Fruit",
  "Blueberry": "Fruit",
  "Kiwi": "Fruit",
  "Orange": "Color",
  "Black": "Color",
  "yellow": "Color",
  "Dog": "Animal",
  "Lion": "Animal",
  "Monkey": "Animal",
};

String randomWord() {
  List<String> wordList = wordsTips.keys.toList();
  wordList.shuffle();
  String word = wordList[0];
  String tip = wordsTips[word]!;

  return "$word.$tip";
}