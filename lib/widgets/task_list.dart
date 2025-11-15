import 'package:flutter/material.dart';
import 'package:do_it/widgets/task_tile.dart';
import 'package:do_it/model/Task.dart';
class TaskList extends StatefulWidget {

   List <Task> tasks=[];
   TaskList({Key? key,required this.tasks}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {


    return ListView.builder(itemBuilder: (context,index){
      return TaskTile(
        taskTitle: widget.tasks[index].name ,
        isChecked: widget.tasks[index].isDone,
        checkBoxCallback:(checkBoxState){
          setState(() {
            widget.tasks[index].toggleDone();

          });
        }

      );
    },
    itemCount: widget.tasks.length,
    );
  }}