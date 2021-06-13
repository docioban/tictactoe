import 'dart:math';

import 'package:flutter/material.dart';

class Values extends ChangeNotifier {
  int numbarOfPlayers = 1;
  List<int> values = List.filled(9, 0); // 0 - nothing, 1 - x, 2 - o
  int score1 = 0;
  int score2 = 0;

  int changeValue(row, column, value) {
    if (values.elementAt(column * 3 + row) == 0) {
      values[column * 3 + row] = value;
      notifyListeners();
      return 1;
    }
    return 0;
  }

  bool checkIfWin() {
    if (values.elementAt(0) != 0 &&
        values.elementAt(0) == values.elementAt(1) &&
        values.elementAt(1) == values.elementAt(2)) {
      return true;
    } else if (values.elementAt(3) != 0 &&
        values.elementAt(3) == values.elementAt(4) &&
        values.elementAt(4) == values.elementAt(5)) {
      return true;
    } else if (values.elementAt(6) != 0 &&
        values.elementAt(6) == values.elementAt(7) &&
        values.elementAt(7) == values.elementAt(8)) {
      return true;
    } else if (values.elementAt(0) != 0 &&
        values.elementAt(0) == values.elementAt(4) &&
        values.elementAt(4) == values.elementAt(8)) {
      return true;
    } else if (values.elementAt(2) != 0 &&
        values.elementAt(2) == values.elementAt(4) &&
        values.elementAt(4) == values.elementAt(6)) {
      return true;
    } else if (values.elementAt(0) != 0 &&
        values.elementAt(0) == values.elementAt(3) &&
        values.elementAt(3) == values.elementAt(6)) {
      return true;
    } else if (values.elementAt(1) != 0 &&
        values.elementAt(1) == values.elementAt(4) &&
        values.elementAt(4) == values.elementAt(7)) {
      return true;
    } else if (values.elementAt(2) != 0 &&
        values.elementAt(2) == values.elementAt(5) &&
        values.elementAt(5) == values.elementAt(8)) {
      return true;
    }
    return false;
  }

  void resetGame() {
    values.setAll(0, [0, 0, 0, 0, 0, 0, 0, 0, 0]);
  }

  void winPlayer(int player) {
    if (player == 1) {
      score1++;
    } else if (player == 2) {
      score2++;
    }
    notifyListeners();
  }

  void movePlayer(int signal) {
    var rng = new Random();
    int count = 0;
    int i = 0;
    for (int value in values) {
      if (value == 0) {
        count += 1;
      }
    }
    int index = rng.nextInt(count);
    for (int value in values) {
      if (i == index) {
        values[i] = signal == 1 ? 2 : 1;
        notifyListeners();
        break;
      }
      if (value == 0) {
        i += 1;
      }
    }
  }

  void resetObject() {
    print('yes');
    this.numbarOfPlayers = 1;
    this.values = List.filled(9, 0); // 0 - nothing, 1 - x, 2 - o
    this.score1 = 0;
    this.score2 = 0;
    notifyListeners();
  }

  bool isFull() {
    if (values.indexOf(0) == -1) {
      return true;
    }
    return false;
  }
}
