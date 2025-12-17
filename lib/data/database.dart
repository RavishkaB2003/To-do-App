import 'package:hive/hive.dart';

class Tododatabase {
  List todoList = [];
  //reference the box
  final todoBox = Hive.box('todo_box');

  //create inital data
  void createInitialData() {
    todoList = [
      ['Morning Exercise', false],
      ['Study Flutter', true],
    ];
  }

  //load data from database
  void loadData() {
    todoList = todoBox.get('TODOLIST');
  }

  //update database
  void updateDatabase() {
    todoBox.put('TODOLIST', todoList);
  }
}
