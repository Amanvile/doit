import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'task.dart';
class TaskData extends ChangeNotifier{
   final List <Task> _tasks=[Task(name: 'yeyo'),Task(name: 'mamayeyo')];
  void taskAdd(String newTask){
    // print(rem);
    final task = Task(name: newTask);
    _tasks.add(task);

    notifyListeners();
    // print(tasks.length);
    // print(newTask);
    // Navigator.pop(context);
    // print(tasks.length);

  }
   UnmodifiableListView<Task> get tasks {
     return UnmodifiableListView(_tasks);
   }

   int get countTask{

    return _tasks.length;
  }

void updateTask(Task task){
    task.toggleDone();
    notifyListeners();

}
void deleteTask(int indexDelete){
  _tasks.removeAt(indexDelete);
  notifyListeners();

}



}