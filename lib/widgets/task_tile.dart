import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          'task 1',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough: null,
        ),
      ),
      trailing: TaskCheckbox(isChecked),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool checkboxState;

  TaskCheckbox(this.checkboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue){
//        setState(() {
//          isChecked = newValue;
//        });
      },
    );
  }
}