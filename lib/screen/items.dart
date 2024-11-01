import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final bool checkboxValue;
  final Function(bool?) TogglecheckBox;
  final VoidCallback DeleteItem;
  ListItem(
      this.title, this.checkboxValue, this.TogglecheckBox, this.DeleteItem);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: DeleteItem,
      title: Text(title,
          style: TextStyle(
              fontSize: 25,
              color: Colors.deepPurple,
              decoration: (checkboxValue) ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: checkboxValue,
        onChanged: TogglecheckBox,
      ),
    );
  }
}
