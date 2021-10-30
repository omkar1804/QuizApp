import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final Function answerquestion;
  final dynamic questions;
  final int questionIndex;

  Quiz(
      {required this.answerquestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => {answerquestion(answer['score'])},
              answer['title'] as String);
        }).toList(),
      ],
    );
  }
}
