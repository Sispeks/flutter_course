import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final List<String> _questions = [
    "What\'s your favorite color?",
    'What\'s your favorite animal?',
  ];
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: <Widget>[
            //_questions.map((question) => Text(question)).toList(),
            Question(questionText: _questions[_questionIndex]),
            RaisedButton(
              child: Text('answer1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
