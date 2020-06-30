import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/task_list/task.dart';
import 'package:flutter_demo/shared/constants/constants.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task List Posted",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: APP_COLOR,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: <Widget>[
          FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.more_horiz,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: Container(
        color: APP_COLOR,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Task(
                id: 1,
                description: 'xxxxxxxxxxx',
                date: '2020/05/05',
                status: 'In Progress',
              ),
              Task(
                id: 1,
                description: 'xxxxxxxxxbbbbbbxx asdfasdf sdf asdf asdfasdf',
                date: '2020/05/05',
                status: 'Posted',
              ),
              Task(
                id: 1,
                description: 'xxxxxxxxxxx',
                date: '2020/05/05',
                status: 'Completed',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, '/camera');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
