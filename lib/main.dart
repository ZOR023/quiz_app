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
  var _questionsIndex = 0;
  void _answerQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is you favorite Color?',
        'answer': ['black', "orange", "red", "white"]
      },
      {
        'questionText': 'Which is Your Favorite Animal',
        'answer': ["rabbit", "monkey", "dog", "cat"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Question(questions[_questionsIndex]['questionText'],),
          questions[_questionsIndex]['answer'].map((answer){})
          Answer(_answerQuestions),
          Answer(_answerQuestions),
          Answer(_answerQuestions),
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
