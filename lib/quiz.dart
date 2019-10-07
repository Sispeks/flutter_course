import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function selectHandler;

  Quiz({
    @required this.questions,
    @required this.selectHandler,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionText: questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) => AnswerButton(
                  selectHandler: selectHandler,
                  answerText: answer,
                ))
            .toList()
      ],
    );
  }
}
