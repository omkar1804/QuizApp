import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetHandler;

  Result(this.finalScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          "You completed the quiz!! & your score is $finalScore",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      TextButton(onPressed: () => {resetHandler()}, child: Text("Reset Quiz!!"))
    ]);
  }
}
