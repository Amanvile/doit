import 'package:flutter/material.dart';
import 'package:do_it/model/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

   String taskTitle= '';



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0, left: 100, right: 100),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,

        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: (newText ){taskTitle=newText;},

            decoration: InputDecoration(
              hintText: 'Enter Task',
              hintStyle: TextStyle(color: Colors.lightBlueAccent.shade100),
            ),
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              if(taskTitle!=''){
                Provider.of<TaskData>(context, listen: false).taskAdd(
                    taskTitle);
              }
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.lightBlueAccent),
            ),
            child: Text('Add', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
