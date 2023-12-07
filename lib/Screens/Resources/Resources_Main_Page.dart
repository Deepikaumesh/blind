import 'package:deaf_dump/Reserved%20Files/sos_message.dart';
import 'package:deaf_dump/Screens/learn/Lear_Main_Screen_Display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Reserved Files/sms_test.dart';
import '../../Reserved Files/sms_test2.dart';
import '../../main.dart';
import 'Add_contacts.dart';
import 'Conversion.dart';
import 'Sos_message_page.dart';





class Resources_Main_Page extends StatefulWidget {
  const Resources_Main_Page({Key? key}) : super(key: key);

  @override
  _Resources_Main_PageState createState() => _Resources_Main_PageState();
}

class _Resources_Main_PageState extends State<Resources_Main_Page> {


  @override
  void initState() {

    emergency == null? emergency = '100': emergency= emergency;

    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,

        elevation: 0,backgroundColor: Colors.transparent,
      title: Text("Resources",style: GoogleFonts.aBeeZee(


          color: Colors.black,fontSize: 40),),),
      body: SingleChildScrollView(
        child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () {
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => Learn_Main_screen()));
                  Navigator.pushNamed(context, '/Learn_Main_screen');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/learn1.jpg',
                        //   height:100,
                        //   width: MediaQuery.of(context).size.width,
                        //   fit: BoxFit.contain,
                        // ),
                        Container(
                          height: 100,
                          color: Colors.white,
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Text(
                              "Communication Tips",
                              style: GoogleFonts.courgette(
                                  fontSize: 30, color: Colors.blueGrey.shade900),
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
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Learn_Main_screen()));

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/learn1.jpg',
                        //   height:100,
                        //   width: MediaQuery.of(context).size.width,
                        //   fit: BoxFit.contain,
                        // ),
                        Container(
                          height: 100,
                          color: Colors.white,
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Text(
                              "Etiquets",
                              style: GoogleFonts.courgette(
                                  fontSize: 30, color: Colors.blueGrey.shade900),
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
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Conversion()));

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/learn1.jpg',
                        //   height:100,
                        //   width: MediaQuery.of(context).size.width,
                        //   fit: BoxFit.contain,
                        // ),
                        Container(
                          height: 100,
                          color: Colors.white,
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Text(
                              "Conversion",
                              style: GoogleFonts.courgette(
                                  fontSize: 30, color: Colors.blueGrey.shade900),
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
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Learn_Main_screen()));

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/learn1.jpg',
                        //   height:100,
                        //   width: MediaQuery.of(context).size.width,
                        //   fit: BoxFit.contain,
                        // ),
                        Container(
                          height: 100,
                          color: Colors.white,
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Text(
                              "Guidlines for parents",
                              style: GoogleFonts.courgette(
                                  fontSize: 30, color: Colors.blueGrey.shade900),
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
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Display_Data()));

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/learn1.jpg',
                        //   height:100,
                        //   width: MediaQuery.of(context).size.width,
                        //   fit: BoxFit.contain,
                        // ),
                        Container(
                          height: 100,
                          color: Colors.white,
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Text(
                              "Add Contacts",
                              style: GoogleFonts.courgette(
                                  fontSize: 30, color: Colors.blueGrey.shade900),
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
                  setState(() {
                   // launch("tel://9526843393");
                   launch("tel://${emergency}");
                   // emergency == null ? launch("tel://100"):  launch("tel://${emergency}");
                   //  emergency == null? emergency = '100' :
                   //      emergency == null ? launch("tel://${emergency}"):
                   //      launch("tel://${emergency}");

                  });
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Learn_Main_screen()));

                },
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/learn1.jpg',
                        //   height:100,
                        //   width: MediaQuery.of(context).size.width,
                        //   fit: BoxFit.contain,
                        // ),
                        Container(
                          height: 100,
                          color: Colors.white,
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Text(
                              "Emergency",
                              style: GoogleFonts.courgette(
                                  fontSize: 30, color: Colors.blueGrey.shade900),
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

                   Navigator.push(context, MaterialPageRoute(builder: (context) => Sos_message_page()));

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Card(
                    // semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        // Image.asset(
                        //   'assets/learn1.jpg',
                        //   height:100,
                        //   width: MediaQuery.of(context).size.width,
                        //   fit: BoxFit.contain,
                        // ),
                        Container(
                          height: 100,
                          color: Colors.white,
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Text(
                              "Sos Message",
                              style: GoogleFonts.courgette(
                                  fontSize: 30, color: Colors.blueGrey.shade900),
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

    // Center(
    // child: TextButton(
    // onPressed: () {
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>sos4()));
    // },
    // child: Text("Call me")),
    // ),



    ],
        ),
      ),
    );
  }
}
