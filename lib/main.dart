import 'package:flutter/material.dart';
import 'package:tes/quis.dart';
import 'package:tes/results.dart';

void main() => runApp(MyApps());

class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Apa warna kesukaan kamu ?',
      'answer': [
        {'text': 'Merah', 'score': 10},
        {'text': 'Hitam', 'score': 5},
        {'text': 'Biru', 'score': 6},
        {'text': 'Kuning', 'score': 3}
      ]
    },
    {
      'questionText': 'Apa hobi kamu ?',
      'answer': [
        {'text': 'Futsal', 'score': 6},
        {'text': 'Badminton', 'score': 3},
        {'text': 'Renang', 'score': 10}
      ]
    },
    {
      'questionText': 'Siapa nama presiden pertama indonesia ?',
      'answer': [
        {'text': 'Soekarno', 'score': 10},
        {'text': 'Jokowi', 'score': 0},
        {'text': 'Soeharto', 'score': 0},
        {'text': 'B.j habibi', 'score': 0}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Nanya-nanya')),
        body: _questionIndex < _questions.length
            ? Quiz(
                question: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Results(_totalScore),
      ),
    );
  }
}
