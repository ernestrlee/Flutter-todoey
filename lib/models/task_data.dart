import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addNewTask(String task){
    _tasks.add(Task(name: task));
    notifyListeners();
  }

}