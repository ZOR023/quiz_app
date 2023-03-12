import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget {
  final Function answerFun;
  Answer(this.answerFun);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: answerFun,
        child: Text('Answer 1'),
        style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.black45),
            backgroundColor: MaterialStatePropertyAll(Colors.cyanAccent)),
      ),
    );
  }
}
