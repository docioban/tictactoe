import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants.dart';

class ScoreText extends StatelessWidget {
  final int score;
  final String semn;

  ScoreText({required this.score, required this.semn});

  @override
  Widget build(BuildContext context) {
    return Text(
      semn + score.toString(),
      style: TextStyle(
        fontFamily: 'daneehand',
        fontSize: 60.0,
        fontWeight: FontWeight.w900,
        color: yellowColor,
      ),
    );
  }
}
