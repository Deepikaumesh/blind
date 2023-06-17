import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Alphabets_Display_page.dart';

class Main_screen extends StatefulWidget {
  const Main_screen({Key? key}) : super(key: key);

  @override
  _Main_screenState createState() => _Main_screenState();
}

class _Main_screenState extends State<Main_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('Deaf  & dump Learning',style: TextStyle(fontSize: 20,color: Colors.teal),),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 320,
            childAspectRatio: 1.8 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          InkWell(
            child:  conta("assets/images/a.jpg"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Alphabets_Display()));
            },
          ),

          conta("assets/images/523.jpg"),
          conta("assets/images/a.jpg"),
          conta("assets/images/alphabets.jpg"),

        ],
      ),

    );
  }
  conta(String url){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Colors.black26),
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.contain,
        ),
        borderRadius:
        BorderRadius.all(Radius.circular(20.0),),
      ),
    );
  }

}
