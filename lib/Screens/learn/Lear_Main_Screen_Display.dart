
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Alphabets/Alphabets_Display_page.dart';
import 'Colors/Colors_ Display_Page.dart';
import 'Family/Family_Display_Page.dart';
import 'Greetings/Greetings_Display.dart';
import 'Numbers/Numbers_Display_page.dart';
import 'Months/Months Display_Page.dart';
import 'Weeks/Weeks Display_page.dart';

class Learn_Main_screen extends StatefulWidget {
  const Learn_Main_screen({Key? key}) : super(key: key);

  @override
  _Learn_Main_screenState createState() => _Learn_Main_screenState();
}

class _Learn_Main_screenState extends State<Learn_Main_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Deaf  & dump Learning',
          style: TextStyle(fontSize: 25, color: Colors.teal),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.8 / 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 40),
        children: [
          InkWell(
            child:  contas("assets/images/a.jpg","Alphabets"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Alphabets_Display()));
            },
          ),
          InkWell(
            child:  contas("assets/images/294497-P78TN6-555.jpg","Numbers"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Numbers_Display()));
            },
          ),
          InkWell(
            child:  contas("assets/images/10452.jpg","Months"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Months_Display_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/8795.jpg","weeks"),
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Weeks_Display_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/colors.jpg","Colors"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Colors_Display_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/behaviour.jpg","Greetings"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Greetings_Display()));
            },
          ),

          InkWell(
            child:  contas("assets/family.png","Family"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Family_Display_Page()));
            },
          ),
        ],
      ),
    );
  }

  conta(String url) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black26),
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
    );
  }

  contas(String url,String title) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black26),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red.shade900,
                fontSize: 20),
          ),
          SizedBox(height: 150, child: Image(image: AssetImage(url))),
        ],
      ),
    );
  }
}
