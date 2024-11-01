import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/task_data.dart';
import 'package:provider/provider.dart';

class Inputscreen extends StatelessWidget {
  late String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 40.0, right: 40.0, top: 40.0, bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blue,
            ),
          ),
          TextField(
            style: TextStyle(color: Colors.blueAccent),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (val) {
              value = val;
            },
          ),
          ElevatedButton(
            onPressed: () {
              print(value);
              //final newtask = Item(value);
              Provider.of<TaskData>(context, listen: false).addTask(value);
              Navigator.pop(context);
            },
            child: Text(
              "Add",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          )
        ],
      ),
    );
  }
}
