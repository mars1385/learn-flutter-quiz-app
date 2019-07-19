//import
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //state
  var _questionIndex = 0;
  final questions = const [
    {
      'question': 'What\'s your favorate color?',
      'answer': ['Black', 'Red', 'White', 'Green']
    },
    {
      'question': 'What\'s your favorate animal?',
      'answer': ['Rabbit', 'Snake', 'Lion', 'Elephant']
    },
    {
      'question': 'Who\'s your favorate instrucot?',
      'answer': ['Brad', 'Brad', 'Brad', 'Brad']
    }
  ];
  //methods
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < questions.length) {}
    print('yse');
  }

  //widget
  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
