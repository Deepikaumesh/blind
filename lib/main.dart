import 'package:flutter/material.dart';

import 'Auth/splashscreen.dart';
import 'Main_Page/Main_Page.dart';
import 'Screens/learn/Lear_Main_Screen_Display.dart';

var ip_address='192.168.29.64';
var em='';

var emergency;
var emergency_id='';


var get_username;
void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/main',
      routes: {
        '/main': (context) => Splashscreen(),
        '/Learn_Main_screen': (context) => Learn_Main_screen(),
      },
    //  home: Main_Page(),
    );
  }
}
