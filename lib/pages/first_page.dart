import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/util/alertbox.dart';
import 'package:todo_app/util/todo_container.dart';

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  //reference hive box
  final todoBox = Hive.box('todo_box');
  //connect db
  Tododatabase db = Tododatabase();

  //init state
  @override
  void initState() {
    //if there is no existing data, create initial data
    if (todoBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      //there is existing data
      db.loadData();
    }
    super.initState();
  }

  final controller = TextEditingController();

  //checkbox changed function
  void checkboxChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updateDatabase();
  }

  //add task function
  void addmethod() {
    setState(() {
      db.todoList.add([controller.text, false]);
      controller.clear();
      Navigator.of(context).pop();
    });
  }

  //delete task function
  void deletetask(int index) {
    setState(() {
      db.todoList.removeAt(index);
    });
    db.updateDatabase();
  }

  //create new task function popup
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return Alertbox(
          controller: controller,
          Add: addmethod,
          Cancel: Navigator.of(context).pop,
        );
      },
    );
  }

  //showdialog function for floating button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow[600],
        child: const Icon(Icons.add, color: Colors.black),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "T O D O  A P P",
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: db.todoList.length,
        itemBuilder: (context, index) {
          return TodoContainer(
            taskname: db.todoList[index][0],
            taskdone: db.todoList[index][1],
            onChanged: (value) => {checkboxChanged(value, index)},
            deletefunction: (context) => deletetask(index),
          );
        },
      ),
    );
  }
}
