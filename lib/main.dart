import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What is your favourite sport?",
      "answers": [
        {"title": "Volleyball", "score": 10},
        {"title": "Cricket", "score": 8},
        {"title": "Football", "score": 5},
        {"title": "Kabaddi", "score": 2},
      ]
    },
    {
      "questionText": "Where do you stay?",
      "answers": [
        {"title": "Paris", "score": 5},
        {"title": "USA", "score": 8},
        {"title": "India", "score": 10},
        {"title": "Australia", "score": 2}
      ]
    }
  ];

  var _questionIndex = 0;
  var _finalScore = 0;

  void _answerQuestion(int score) {
    _finalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerquestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_finalScore, resetQuiz),
      ),
    );
  }
}
