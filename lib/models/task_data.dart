import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{

 List<Task> _tasks = [
  Task(name: 'Comprar Leche'),
  Task(name: 'Buy Mango'),
  Task(name: 'Comprar Pan'),
];

UnmodifiableListView<Task> get tasks {
  return UnmodifiableListView(_tasks);
}

int  get taskCount {
  return _tasks.length;
}

void addTask (String newTaskTitle){
  final task = Task(name: newTaskTitle);
  _tasks.add(task);
  notifyListeners();
}

void updateTask ( Task task){
  task.toggleDone();
  notifyListeners();
}

void deleteTask (Task task) {
  _tasks.remove(task);
  notifyListeners();
}

}