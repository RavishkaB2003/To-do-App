import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/pages/first_page.dart';
import 'package:todo_app/themes/theme.dart';

void main() async{

  //start hive
  await Hive.initFlutter();


  //open a box
  // ignore: unused_local_variable
  var box = await Hive.openBox('todo_box');

  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Todoapp(),
      theme: lightmode,
      darkTheme: darkmode,
    );
  }
}