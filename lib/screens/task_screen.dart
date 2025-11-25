import 'package:do_it/model/task_data.dart';
import 'package:flutter/material.dart';
import 'package:do_it/widgets/task_list.dart';
import 'package:do_it/screens/add_task_screen.dart';
import 'package:do_it/model/task.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=> AddTaskScreen());
        },
        child: Icon(Icons.add, color: Colors.white,size: 30)

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [Container(
          // alignment: Alignment.center,
          padding: EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(Icons.list, color: Colors.lightBlueAccent, size: 30),
              ),
              SizedBox(height: 20),
              Text(
                'Do It',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text('tasks ${Provider.of<TaskData>(context).countTask}', style: TextStyle(color: Colors.white)),

            ],
          ),
        ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration:BoxDecoration( color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
              height:300,
              child: TaskList(),
            ),
          )],
      ),
    );
  }
}






