import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp()); shorthand for main func

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('this is body'),
        appBar: AppBar(
          title: Text('App Title'),
        ),
      ),
    );
  }
}
