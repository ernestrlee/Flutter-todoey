import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
  ];

  int get taskCount {
    return tasks.length;
  }

}