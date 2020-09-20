import 'package:flutter/material.dart';

import './question.dart'; 

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _MyAppState ();
  }
}

//Create Widget 'evry wedget is a class in Dart language'/ based class

class _MyAppState extends State<MyApp> {
  var _questionsIndex = 0;

  void _answerQuestions() {
    //call the buil again !
    setState((){
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  } 

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animals?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionsIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestions,
            )
          ],
        ),
      ),
    );
  }
}
