import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

final bool isCheck;
final String taskTitle;
final Function checkboxCallback;
final Function removeTask;

  TaskTile({this.isCheck,this.taskTitle,this.checkboxCallback,this.removeTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: removeTask,
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isCheck,
        onChanged: checkboxCallback,
      ),
    );
  }
}


// (bool checkboxState) {
// setState(() {
// isCheck = checkboxState;
// });
// },