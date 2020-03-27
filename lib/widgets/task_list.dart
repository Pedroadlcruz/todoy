import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
}
class _TaskListState extends State<TaskList> {

List<Task> tasks = [
  Task(name: 'Buy Milk'),
  Task(name: 'Buy Mango'),
  Task(name: 'Buy Bread'),
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
       return TaskTile(
         taskTitle: tasks[index].name,
         isChecked: tasks[index].isDone ,
         checkboxCallback: (bool checkboxState){
           setState(() {
        tasks[index].toggleDone() ; 
          }); 
        },
         );
    },
    itemCount: tasks.length,
    );
  }
}