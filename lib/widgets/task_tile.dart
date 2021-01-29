import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskText;
  final Function checkBoxCallback;
  final Function longCallback;
  TaskTile(
      {this.isChecked,
      this.taskText,
      this.checkBoxCallback,
      this.longCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longCallback,
      title: Text(
        taskText,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
