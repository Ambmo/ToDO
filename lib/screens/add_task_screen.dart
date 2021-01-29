import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

String newTaskTitle;

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
              ),
              TextField(
                  cursorColor: Colors.lightBlueAccent,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (passedTask) {
                    newTaskTitle = passedTask;
                  }),
              FlatButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0))),
      ),
    );
  }
}
