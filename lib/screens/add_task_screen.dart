import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';

//<<<<<<<<<<<<<<
String newTask;

// void addTask(task){
// newTask = task;
//   TasksList();
// }

class AddTaskScreen extends StatelessWidget {
  final Function callBack;
  AddTaskScreen(this.callBack);

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
                    newTask = passedTask;
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
                  callBack(newTask);
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
