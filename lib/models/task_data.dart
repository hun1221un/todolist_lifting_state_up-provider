import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy Milk (Hold to delete)'),
    Task(name: 'Buy eggs (Hold to delete)'),
    Task(name: 'Buy bread (Hold to delete)'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle){

    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void removeData(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}