import 'package:flutter/foundation.dart';
import './items.dart';

class TaskData extends ChangeNotifier {
  final List<Item> items = [];

  int get totalLength => items.length;

  void addTask(String item) {
    final val = Item(item);
    items.add(val);
    notifyListeners();
  }

  void update(int idx) {
    print(idx);
    items[idx].toggleDone();
    notifyListeners();
  }

  void deleteitem(int idx) {
    items.remove(items[idx]);
    notifyListeners();
  }
}
