import 'dart:math';

import 'package:flutter/material.dart';

class DiceButtom extends StatefulWidget {
  const DiceButtom({Key? key}) : super(key: key);

  @override
  _DiceButtomState createState() => _DiceButtomState();
}

class _DiceButtomState extends State<DiceButtom> {
  final random = Random();
  late int diceNumber;

  @override
  void initState() {
    diceNumber = random.nextInt(6) + 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(16),
        ),
      ),
      onPressed: () {
        setState(() {
          diceNumber = random.nextInt(6) + 1;
        });
      },
      child: Image.asset('images/dice$diceNumber.png'),
    );
  }
}
