import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); shorthand for main func

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionsIndex = 0;
  void answerQuestions() {
    setState(() {
      questionsIndex = questionsIndex + 1;
    });
    print(questionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is you favorite Color?',
      'Which is Your Favorite Animal'
    ];

    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Text(questions[questionsIndex]),
          ElevatedButton(onPressed: answerQuestions, child: Text('Answer 1')),
          ElevatedButton(
              onPressed: () => print("Answer 2"), child: Text('Answer 2')),
          ElevatedButton(
              onPressed: () => print("Answer 3"), child: Text('Answer 3')),
          ElevatedButton(
              onPressed: () => print("Answer 4"), child: Text('Answer 4')),
        ]),
        appBar: AppBar(
          title: Text('App Title'),
        ),
      ),
    );
  }
}
