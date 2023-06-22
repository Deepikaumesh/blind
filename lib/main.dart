import 'package:flutter/material.dart';

import 'Main_Page/Main_Page.dart';
import 'Screens/learn/Lear_Main_Screen_Display.dart';
import 'Screens/learn/Weeks/Weeks Display_page.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main_Page(),
    );
  }
}
