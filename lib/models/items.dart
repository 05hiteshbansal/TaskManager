class Item {
  final String title;
  bool isDone = false;

  Item(this.title);

  void toggleDone() {
    isDone = !isDone;
  }
}
