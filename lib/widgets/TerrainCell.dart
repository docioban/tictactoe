import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/modules/Values.dart';

class TerrainCell extends StatelessWidget {
  static int jucator = 1;
  final int row;
  final int column;

  TerrainCell({required this.row, required this.column});

  @override
  Widget build(BuildContext context) {
    return Consumer<Values>(builder: (context, value, child) {
      String image = 'resource/x_red.png';
      if (value.values[column * 3 + row] == 1) {
        image = 'resource/o_yellow.png';
      } else if (value.values[column * 3 + row] == 2) {
        image = 'resource/x_yellow.png';
      }
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            if (value.changeValue(row, column, jucator) != 0) {
              if (value.checkIfWin() == true) {
                value.winPlayer(jucator);
                value.resetGame();
              }
              if (value.isFull() == false) {
                if (value.numbarOfPlayers == 1) {
                  if (jucator == 1) {
                    jucator = 2;
                  } else {
                    jucator = 1;
                  }
                } else {
                  value.movePlayer(jucator);
                  if (value.checkIfWin() == true) {
                    value.winPlayer(jucator);
                    value.resetGame();
                  }
                }
              } else {
                value.resetGame();
              }
            }
          },
          child: Image.asset(image),
        ),
      );
    });
  }
}
