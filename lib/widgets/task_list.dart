import 'package:do_it/model/task_data.dart';
import 'package:flutter/material.dart';
import 'package:do_it/widgets/task_tile.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {

   // List <Task> tasks=[];
   const TaskList({super.key});


  @override
  Widget build(BuildContext context) {


    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(itemBuilder: (context,index){
          final task = taskData.tasks[index];
          return TaskTile(
              onLongPressCallBack:()=>taskData.deleteTask(index),

              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallback:(checkBoxState){
                // setState(() {
                taskData.updateTask(task);
                // });

              }
          );
        }
        ,itemCount: taskData.countTask,);
      },
      // itemCount:TaskData.countTask,
      );
  }}