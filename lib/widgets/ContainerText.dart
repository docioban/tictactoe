import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/constants.dart';
import 'package:tic_tac_toe/modules/Values.dart';

class ContainerText extends StatelessWidget {
  final int numbarOfPlayers;

  ContainerText({required this.numbarOfPlayers});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: TextButton(
        onPressed: () {
          if (numbarOfPlayers !=
              Provider.of<Values>(context, listen: false).numbarOfPlayers) {
            Provider.of<Values>(context, listen: false).resetObject();
          }
          Provider.of<Values>(context, listen: false).numbarOfPlayers =
              numbarOfPlayers;
          Navigator.pushNamed(context, '/second');
        },
        child: Container(
          padding: EdgeInsets.all(30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: yellowColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Text(
            numbarOfPlayers.toString() +
                (numbarOfPlayers == 1 ? ' Player' : ' Players'),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: redColor,
              fontFamily: "daneehand",
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
