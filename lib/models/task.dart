import 'package:flutter/material.dart';
class Task with ChangeNotifier{

String  todoTask;
bool isDone;

Task({this.todoTask, this.isDone = false});

get name {
  return todoTask;
}
set name (String name){
  this.todoTask = name;
  notifyListeners();
}

void toggleDone(){
  isDone = !isDone;
  notifyListeners();
}


}