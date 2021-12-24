import 'package:flutter/material.dart';
import 'package:fooder_app/models/models.dart';

class GroceryItemsScreen extends StatefulWidget {
  final Function(GroceryItem) onCreate;
  final Function(GroceryItem) onUpdate;
  final GroceryItem? originalItem;
 final bool isUpdating;

  const GroceryItemsScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,

  }) : isUpdating = (originalItem != null), super(key: key);

  @override
  _GroceryItemsScState createState() => _GroceryItemsScState();
}

class _GroceryItemsScState extends State<GroceryItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.orange,);
  }
}
