import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  static const List<Map<String, Object>> _questions = [
    {
      'questionText': "What\'s your favorite color?",
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 1,
        },
        {
          'text': 'White',
          'score': 2,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Snake',
          'score': 10,
        },
        {
          'text': 'Rabbit',
          'score': 1,
        },
        {
          'text': 'Elephant',
          'score': 3,
        },
        {
          'text': 'Lion',
          'score': 6,
        },
      ]
    },
    {
      'questionText': 'In which programming language is AI written?',
      'answers': [
        {
          'text': 'PowerPoint',
          'score': 10,
        },
        {
          'text': 'Python',
          'score': 1,
        },
        {
          'text': 'R',
          'score': 3,
        },
        {
          'text': 'Flutter',
          'score': 6,
        },
      ]
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
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
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                selectHandler: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
