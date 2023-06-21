import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Human_Behaviour_Display extends StatefulWidget {
  Human_Behaviour_Display() : super();

  @override
  Human_Behaviour_DisplayState createState() => Human_Behaviour_DisplayState();
}

class Human_Behaviour_DisplayState extends State<Human_Behaviour_Display> {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Human Behaviours",
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
              image:  AssetImage("assets/images/expression.jpeg"),
              fit: BoxFit.contain,
            )
          ),
          // child: Column(
          //   children: [
          //     SizedBox(
          //       height: 5,
          //     ),
          //     SizedBox(height: 150, child: Image(image: AssetImage("assets/images/expression.jpeg"))),
          //   ],
          // ),
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
                    image:  AssetImage("assets/images/baha2.jpg"),
                    fit: BoxFit.contain,
                  )
              ),
              // child: Column(
              //   children: [
              //     SizedBox(
              //       height: 5,
              //     ),
              //     SizedBox(height: 150, child: Image(image: AssetImage("assets/images/expression.jpeg"))),
              //   ],
              // ),
            ),

  ],),
      ),    );
  }
}
