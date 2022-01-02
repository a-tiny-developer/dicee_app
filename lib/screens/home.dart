import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text('Dicee'),
      ),
      body: const DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final random = Random();
  late int leftDiceNumber;
  late int righDiceNumber;

  @override
  void initState() {
    leftDiceNumber = random.nextInt(6) + 1;
    righDiceNumber = random.nextInt(6) + 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.all(16),
                ),
              ),
              onPressed: () {
                setState(() {
                  leftDiceNumber = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.all(16),
                ),
              ),
              onPressed: () {
                setState(() {
                  righDiceNumber = random.nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$righDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
