import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String answerText;

  Answer(this.onPressed, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
        child: Text(this.answerText),
        onPressed: this.onPressed,
      ),
    );
  }
}
