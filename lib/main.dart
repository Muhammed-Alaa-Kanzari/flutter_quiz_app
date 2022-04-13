import 'package:flutter/material.dart';

import "./quiz.dart" ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = const [
      {
        'questionText': 'What\'s your favorite color ?',
        'answers': ['Black', 'Red', 'Blue', 'Green']
      },
      {
        'questionText': 'What\'s your favorite animal ?',
        'answers': ['Tiger', 'Dog', 'Cat', 'Rabbit']
      },
      {
        'questionText': 'Who\'s your favorite instructor  ?',
        'answers': ['Me', 'Me', 'Me', 'Me']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ?
            : Center(
                child: Text(
                'You did it',
                style: TextStyle(fontSize: 30),
              )),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
