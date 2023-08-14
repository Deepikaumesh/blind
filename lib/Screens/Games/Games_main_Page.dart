import 'package:deaf_dump/Screens/learn/Lear_Main_Screen_Display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Alphabet_game.dart';
import 'Greetings_game.dart';


class Games_Main_Page extends StatefulWidget {
  const Games_Main_Page({Key? key}) : super(key: key);

  @override
  _Games_Main_PageState createState() => _Games_Main_PageState();
}

class _Games_Main_PageState extends State<Games_Main_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,

        elevation: 0,backgroundColor: Colors.transparent,
      title: Text("Choose a Topic to be\ntested on...",style: GoogleFonts.average(


          color: Colors.white,fontSize: 35),),),
      body: SingleChildScrollView(
        child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alphabet_Game()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/alphabets2.jpg',
                        //  height: 170,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.contain,
                        ),
                        Positioned(
                            top: 80,
                            left: 80,
                            child: Text(
                              "Alphabets",
                              style: GoogleFonts.courgette(
                                  fontSize: 40, color: Colors.black),
                            )),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    shadowColor: Colors.purple.shade900,
                    elevation: 9,
                    margin: EdgeInsets.all(10),
                  ),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Greetings_Game()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/greetings.jpg',
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.contain,
                        ),
                        Positioned(
                            top: 15,
                            left: 30,
                            child: Text(
                              "Greetings",
                              style: GoogleFonts.courgette(
                                  fontSize: 40, color: Colors.teal.shade400),
                            )),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    shadowColor: Colors.purple.shade900,
                    elevation: 9,
                    margin: EdgeInsets.all(10),
                  ),
                )),
            InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Main_screen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/learn1.jpg',
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.contain,
                        ),
                        Positioned(
                            top: 15,
                            left: 30,
                            child: Text(
                              "Challenge",
                              style: GoogleFonts.courgette(
                                  fontSize: 40, color: Colors.blueGrey.shade900),
                            )),
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    shadowColor: Colors.purple.shade900,
                    elevation: 9,
                    margin: EdgeInsets.all(10),
                  ),
                )),


          ],
        ),
      ),
    );
  }
}
