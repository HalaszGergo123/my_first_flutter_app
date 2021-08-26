import 'package:flutter/material.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
            ElevatedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
            ElevatedButton(child: Text('Answer 3'), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
