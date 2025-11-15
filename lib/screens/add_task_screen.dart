import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final myController = TextEditingController();
  late String? task;
  final void Function(String) onchange;
   AddTaskScreen({super.key,required this.onchange,this.task});


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
            onChanged: (String ){task=myController.text;},
            controller: myController,
            decoration: InputDecoration(
              hintText: 'Enter Task',
              hintStyle: TextStyle(color: Colors.lightBlueAccent.shade100),
            ),
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              onchange(task!);
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
