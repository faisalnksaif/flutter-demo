import 'package:flutter/material.dart';
import 'package:flutter_demo/shared/widgets/big_button.dart';
import 'package:flutter_demo/shared/constants/constants.dart';

class TaskHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_COLOR,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[Image.asset('assets/images/logo.png')],
              ),
              Column(
                children: <Widget>[
                  BigButton(
                    title: 'Post Task',
                    onTap: () {
                      Navigator.pushNamed(context, '/task-list');
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  BigButton(
                    title: 'Take Task',
                    onTap: () {
                      Navigator.pushNamed(context, '/task-list');
                    },
                  ),
                ],
              ),
              SizedBox(height: 0)
            ],
          )),
    );
  }
}
