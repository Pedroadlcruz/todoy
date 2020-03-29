import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String  taskTitle;
  final Function  checkboxCallback;

  TaskTile ({this.isChecked, this.taskTitle,this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return  ListTile(
        title:Text (taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked, 
        onChanged: checkboxCallback,
      ),
      onLongPress: (){
        final task =Provider.of<Task>(context, listen: false);
        taskData.deleteTask(task);
        


      },
      );
      },
          
    );
  }
}



// class TaskCheckbox extends StatelessWidget {

// final bool checkboxState;
// final Function toggleCheckboxState;

// TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState, 
//       onChanged: toggleCheckboxState,
//     );
//   }
// }