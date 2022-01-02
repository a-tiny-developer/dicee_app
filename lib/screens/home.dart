import 'package:dicee_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: DiceButtom(
              diceValue: Provider.of<RamdomDiceManager>(
                context,
              ).leftDice,
            ),
          ),
          Expanded(
            child: DiceButtom(
              diceValue: Provider.of<RamdomDiceManager>(
                context,
              ).righDice,
            ),
          ),
        ],
      ),
    );
  }
}
