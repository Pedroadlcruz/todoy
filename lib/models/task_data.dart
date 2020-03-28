import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier{

 List<Task> tasks = [
  Task(name: 'Comprar Leche'),
  Task(name: 'Buy Mango'),
  Task(name: 'Comprar Pan'),
];

int  get taskCount {
  return tasks.length;
}

}