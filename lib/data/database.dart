import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
  class ToDoDataBase{

    List toDoList =[];

  //refrence our box
    final _mybox = Hive.box('mybox');
 // run this method if this is the 1st time ever opening this app
  void createInitialData(){
    toDoList = [
      [' Make Tutorial',false],
      ['Do Exercise',false],
    ];
  }
// lead the data from the database
    void loadData(){
    toDoList = _mybox.get("TODOLIST");
  }
  // update the database
void updateDataBase(){
_mybox.put("TODOLIST", toDoList);
}
}