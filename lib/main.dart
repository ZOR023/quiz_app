import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); shorthand for main func

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What is you favorite Color?',
      'answer': ['black', "orange", "red", "white"]
    },
    {
      'questionText': 'Which is Your Favorite Animal',
      'answer': ["rabbit", "monkey", "dog", "cat"]
    },
  ];
  var _questionsIndex = 0;
  void _answerQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
    if (_questionsIndex < questions.length) {
      print('we have more questions')
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Question(
            questions[_questionsIndex]['questionText'],
          ),
          ...(questions[_questionsIndex]['answer'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestions, answer);
          }).toList()
          // ElevatedButton(
          //     onPressed: () => print("Answer 4"), child: Text('Answer 4')),
        ]),
        appBar: AppBar(
          title: Text('App Title'),
        ),
      ),
    );
  }
}
