import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart'; //42605   //468

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskText: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallback: (checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
