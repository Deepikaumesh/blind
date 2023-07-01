import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class Greetings_Display extends StatefulWidget {
  Greetings_Display() : super();

  @override
  Greetings_DisplayState createState() => Greetings_DisplayState();
}

class Greetings_DisplayState extends State<Greetings_Display> {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Greetings",
          style: TextStyle(
            color: Colors.red.shade900,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              //  height:MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  // border: Border.all(width: 2, color: Colors.black26),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/expression.jpeg"),
                    fit: BoxFit.contain,
                  )),
            ),
            Container(
              height: 300,
              //  height:MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  //  border: Border.all(width: 2, color: Colors.black26),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/baha2.jpg"),
                    fit: BoxFit.contain,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Hello",
                    style:
                        GoogleFonts.prompt(fontSize: 20, color: Colors.white),
                  )),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Goodbye",
                    style:
                        GoogleFonts.prompt(fontSize: 20, color: Colors.white),
                  )),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "No",
                    style:
                        GoogleFonts.prompt(fontSize: 20, color: Colors.white),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Please",
                    style:
                        GoogleFonts.prompt(fontSize: 20, color: Colors.white),
                  )),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Thank you",
                    style:
                        GoogleFonts.prompt(fontSize: 20, color: Colors.white),
                  )),
                ),
                Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Yes",
                    style:
                        GoogleFonts.prompt(fontSize: 20, color: Colors.white),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Sorry",
                    style:
                        GoogleFonts.prompt(fontSize: 20, color: Colors.white),
                  )),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "I love you",
                    style:
                        GoogleFonts.prompt(fontSize: 20, color: Colors.white),
                  )),
                ),
              ],
            ),
            Container(height: 20,),
          ],
        ),
      ),
    );
  }
}
