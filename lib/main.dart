 import 'package:flutter/material.dart';
 void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Todoey',
      home:Scaffold(
      appBar: AppBar(
        title: Text('Todoey'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
       ),
      ),
    );
  }
} //MateApp