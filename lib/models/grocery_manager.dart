import 'package:flutter/material.dart';
import 'grocery_item.dart';

class GroceryManager extends ChangeNotifier {
  final _grocery_items = <GroceryItem>[];

  List<GroceryItem> get groceryItems => List.unmodifiable(_grocery_items);

  void deleteItem(int index) {
    _grocery_items.removeAt(index);
    notifyListeners();
  }

  void addItem(GroceryItem item) {
    _grocery_items.add(item);
    notifyListeners();
  }

  void updateItem(GroceryItem item, int index) {
    _grocery_items[index] = item;
    notifyListeners();
  }

  void completeItem(int index, bool change) {
    final item = _grocery_items[index];
    _grocery_items[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }
}