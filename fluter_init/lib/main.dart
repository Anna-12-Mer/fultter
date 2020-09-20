import 'package:fluter_init/result.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//Create Widget 'evry wedget is a class in Dart language'/ based class

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'quetionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'quetionText': 'What\'s your favorite animals?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 1},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Lion', 'score': 1}
      ]
    },
    {
      'quetionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1}
      ]
    },
  ];
  var _questionsIndex = 0;
  var _totaleScore = 0;
  void _resteQuez() {
    setState(() {
      _questionsIndex = 0;
      _totaleScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totaleScore += score;
    //setState call the buil again !
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
    if (_questionsIndex < _questions.length) {
      print('We have more questions!  ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questions: _questions,
                questionsIndex: _questionsIndex,
              )
            : Result(_totaleScore, _resteQuez),
      ),
    );
  }
}
