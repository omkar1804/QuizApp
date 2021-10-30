import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function changestate;

  final String answer;

  Answer(this.changestate, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => {changestate()},
        child: Text(answer),
      ),
    );
  }
}
