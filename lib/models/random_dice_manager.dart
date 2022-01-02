import 'dart:math';

import 'package:flutter/material.dart';

class RamdomDiceManager extends ChangeNotifier {
  final random = Random();
  int leftDice = 1;
  int righDice = 1;

  void randomizeDice() {
    leftDice = random.nextInt(6) + 1;
    righDice = random.nextInt(6) + 1;
    notifyListeners();
  }

  RamdomDiceManager() {
    randomizeDice();
  }
}
