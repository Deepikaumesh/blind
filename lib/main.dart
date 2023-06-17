import 'package:flutter/material.dart';

import 'Screens/learn/main_Screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main_screen(),
    );
  }
}
