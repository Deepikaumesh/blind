import 'package:deaf_dump/Screens/learn/Lear_Main_Screen_Display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  _Main_PageState createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        toolbarHeight: 90,

        elevation: 0,backgroundColor: Colors.transparent,
      title: Text("Choose a card to get statred....",style: GoogleFonts.cookie(


          color: Colors.grey.shade600,fontSize: 40),),),
      body: SingleChildScrollView(
        child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Main_screen()));
                },
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
                            "Learn",
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
                )),
            InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Main_screen()));
                },
                child: Card(
                  // semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/games.jpg',
                        height: 220,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.contain,
                      ),
                      Positioned(
                          top: 15,
                          left: 30,
                          child: Text(
                            "Games",
                            style: GoogleFonts.courgette(
                                fontSize: 40, color: Colors.deepOrange.shade500),
                          )),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  shadowColor: Colors.purple.shade900,
                  elevation: 9,
                  margin: EdgeInsets.all(10),
                )),
            InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Main_screen()));
                },
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
                            "Resources",
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
                )),


          ],
        ),
      ),
    );
  }
}
