import 'dart:math';

import 'package:flutter/material.dart';

class RamdomDiceManager extends ChangeNotifier {
  final random = Random();
  late int leftDice;
  late int righDice;

  void randomizeDice() {
    leftDice = random.nextInt(6) + 1;
    righDice = random.nextInt(6) + 1;
    notifyListeners();
  }

  RamdomDiceManager() {
    randomizeDice();
  }
}
