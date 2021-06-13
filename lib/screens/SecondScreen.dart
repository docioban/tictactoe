import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/constants.dart';
import 'package:tic_tac_toe/modules/Values.dart';
import 'package:tic_tac_toe/widgets/ScoreText.dart';
import 'package:tic_tac_toe/widgets/Terrain.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40.0),
            Expanded(
              flex: 1,
              child: Consumer<Values>(builder: (context, value, child) {
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ScoreText(score: value.score1, semn: 'o: '),
                      ScoreText(score: value.score2, semn: 'x: ',),
                    ]);
              }),
            ),
            Expanded(
              flex: 6,
              child: Terrain(),
            ),
          ],
        ),
      ),
    );
  }
}
