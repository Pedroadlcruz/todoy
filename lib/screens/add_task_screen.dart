import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
class AddTaskScreen extends StatelessWidget {
  
final Function addTaskCallback;

AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {

  String newTaskTitle;  

    return Container(
      color: Color(0xfff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 30.0,),
              Text('Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newtext) {
                  newTaskTitle = newtext;
                } ,
              ),
              SizedBox(height: 10.0,),
              FlatButton(
                color: Colors.lightBlueAccent,
                child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
                ),
                onPressed: (){                  
                 addTaskCallback(newTaskTitle);
                },
              )
            ],
          ),
      ),
    );
  }
}