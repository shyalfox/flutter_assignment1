// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
//import './text.dart';
//import './textcontrol.dart';

void main() => runApp(MyAssignment());

class MyAssignment extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyAssignment({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return MyAssignmentState();
  }
}

class MyAssignmentState extends State<MyAssignment> {
  var textIndex = 0;

  void changedQuestion() {
    setState(() {
      textIndex = textIndex + 1;
    });

    debugPrint('Text Changed $textIndex');
  }

  var questions = [
    'I am Good',
    'I am Bad',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Texts'),
        ),
        body: Column(
          children: [
            Text(questions[textIndex]),
            RaisedButton(
              onPressed: changedQuestion,
              child: Text('Click ME'),
            ),
            RaisedButton(
              onPressed: (() {
                debugPrint('Answer 2 Chosen');
              }),
              child: Text('Click ME'),
            ),
          ],
        ),
      ),
    );
  }
}
