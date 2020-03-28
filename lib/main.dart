import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/screens/task_screen.dart';

 void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context)=> Task(),),
          ],
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
         home: TasksScreen(),
      ),
    );
  }
} //MateApp