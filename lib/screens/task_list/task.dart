import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final int id;
  final String description;
  final String date;
  final String status;

  Task({this.id, this.description, this.date, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
              child: Text(
                id.toString(),
                style: TextStyle(color: Colors.black),
              ),
              width: 20),
          Expanded(
              child: Text(description, style: TextStyle(color: Colors.black)),
              flex: 5),
          SizedBox(
              child: Text(date, style: TextStyle(color: Colors.black)),
              width: 90),
          SizedBox(
            width: 100,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Text(
                status,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              decoration: new BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: new BorderRadius.circular(3.0)),
            ),
          )
        ],
      ),
    );
  }
}
