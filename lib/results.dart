import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;

  Results(this.resultScore);

  String get resultPharse {
    String resultsText;
    if (resultScore <= 8) {
      resultsText = 'Kamu luar biasa';
    } else if (resultScore <= 12) {
      resultsText = 'Cukup Baik';
    } else if (resultScore <= 16) {
      resultsText = 'Terbaik';
    } else {
      resultsText = 'Sangat Buruk';
    }
    return resultsText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPharse,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
