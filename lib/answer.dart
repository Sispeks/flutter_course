import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function selectHandler;

  final String answerText;

  AnswerButton({this.selectHandler, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.indigo,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
