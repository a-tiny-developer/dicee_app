import '../models/models.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiceButtom extends StatelessWidget {
  const DiceButtom({Key? key, required this.diceValue}) : super(key: key);
  final int diceValue;

  @override
  Widget build(BuildContext context) {
    return Consumer<RamdomDiceManager>(
      builder: (context, randomDiceManager, child) {
        return TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(16),
            ),
          ),
          onPressed: randomDiceManager.randomizeDice,
          child: Image.asset('images/dice$diceValue.png'),
        );
      },
    );
  }
}
