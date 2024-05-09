import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //!Reference our Box
  final _mybox = Hive.box('MyBox');

//! run this method if this is the first time  ever to open the app
  void createInitialData() {
    toDoList = [
      ["Example", false],
      ["Example 2", false],
    ];
  }

//! Load
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

//! update
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
