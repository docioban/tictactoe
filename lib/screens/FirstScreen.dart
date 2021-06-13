import 'package:flutter/material.dart';
import 'package:tic_tac_toe/constants.dart';
import 'package:tic_tac_toe/widgets/ContainerText.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContainerText(
              numbarOfPlayers: 1,
            ),
            ContainerText(
              numbarOfPlayers: 2,
            ),
          ],
        ),
      ),
    );
  }
}