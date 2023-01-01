import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'whats your favourite color?',
      'whats your favourite animal?',
      'caca',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 2 chosen!');
              },
              child: Text('Answer2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer3'),
            ),
          ],
        ),
      ),
    );
  }
}
