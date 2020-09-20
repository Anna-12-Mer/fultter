import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsIndex;
  final Function answerQuestions;

  Quiz(
      {@required this.questions,
      @required this.answerQuestions,
      @required this.questionsIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionsIndex]['quetionText']),
        ...(questions[questionsIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(()=> answerQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
