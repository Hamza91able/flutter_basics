import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 18) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 25) {
      resultText = "Preety likeable!";
    } else if (resultScore <= 30) {
      resultText = "You are strange!!";
    } else {
      resultText = "You are insane!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
