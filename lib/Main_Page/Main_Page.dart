import 'package:deaf_dump/Screens/learn/Lear_Main_Screen_Display.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/Games/Games_main_Page.dart';
import '../Screens/Resources/Resources_Main_Page.dart';


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

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName:Text("hnh"),
                accountEmail: Text("kkk"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  // backgroundImage: NetworkImage(trainer_Image), radius: 25,

                  // ), //circleAvatar
                ), //UserAccountDrawerHeader
              ),
            ), //DrawerHeader


            ListTile(
              leading: Icon(Icons.logout),
              title: Text('LogOut'),
              onTap: () {

              },
            ),

            ListTile(
              leading: Icon(Icons.menu_book_outlined),
              title: Text('About Us'),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => About_Us(
                //         )));
              },
            ),

          ],
        ),
      ),
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
                  ),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Games_Main_Page()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
                  ),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Resources_Main_Page()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
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
                  ),
                )),


          ],
        ),
      ),
    );
  }
}
