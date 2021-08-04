import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (ctx, i) {
          final task = taskData.tasks[i];
          return TaskTile(
              taskTitle: task.name,
              isCheck: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
              removeTask: (){
                taskData.removeData(task);
          },);
        },
        itemCount: taskData.tasks.length,
      );
    });
  }
}
