import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'models/models.dart';

import 'screens/screens.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) {
              return RamdomDiceManager();
            },
          )
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
