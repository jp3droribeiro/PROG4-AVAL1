class Game {
  static int tries = 0;
  static List<String> selectedKey = [];
  late String result ;

  static void reset() {
    selectedKey.clear();
    tries = 0;
  }

}
