import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './items.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          child: ListView.builder(
            itemCount: Provider.of<TaskData>(context).totalLength,
            itemBuilder: (context, index) {
              return ListItem(Provider.of<TaskData>(context).items[index].title,
                  Provider.of<TaskData>(context).items[index].isDone,
                  (checkState) {
                Provider.of<TaskData>(context, listen: false).update(index);
              }, () {
                Provider.of<TaskData>(context, listen: false).deleteitem(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
