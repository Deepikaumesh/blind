
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'Baby_Detail_Page.dart';
import 'Brother_Detail_Page.dart';
import 'Family_Detail_Page.dart';
import 'Father_Detail_Page.dart';
import 'GrandFather_Detail_Page.dart';
import 'GrandMother_Detail_Page.dart';
import 'Mother_Detail_Page.dart';
import 'Sister_Detail_Page.dart';

class Family_Display_Page extends StatefulWidget {
  const Family_Display_Page({Key? key}) : super(key: key);

  @override
  _Family_Display_PageState createState() => _Family_Display_PageState();
}

class _Family_Display_PageState extends State<Family_Display_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Family',
          style: TextStyle(fontSize: 25, color:Colors.pink.shade300),
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
            child:  contas("assets/family.png","Family"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Family_Detail_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/father.png","Father"),
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Father_Detail_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/mother.png","Mother"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mother_Detail_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/grandfather.png","Grand Father"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GrandFather_Detail_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/grandmother.png","Grand Mother"),
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>GrandMother_Detail_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/brother.png","Brother"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Brother_Detail_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/images/sister.png","Sister"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sister_Detail_Page()));
            },
          ),
          InkWell(
            child:  contas("assets/baby.png","Baby"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Baby_Detail_Page()));
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
        border: Border.all(width: 2, color: Colors.pink.shade300),
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
                color: Colors.teal.shade600,
                fontSize: 20),
          ),
          SizedBox(height: 150, child: Image(image: AssetImage(url))),
        ],
      ),
    );
  }
}
