import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


 final bool isChecked ;
 final String taskTitle;
 final Function(bool?) checkBoxCallback;

  const TaskTile({super.key,this.isChecked=false,required this.taskTitle,required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        checkColor: Colors.white,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
      title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
      ),
    );
  }
}


