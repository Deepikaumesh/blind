import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Months_Display extends StatefulWidget {
  const Months_Display({Key? key}) : super(key: key);

  @override
  _Months_DisplayState createState() => _Months_DisplayState();
}

class _Months_DisplayState extends State<Months_Display> {

  List<dynamic> alpha = [
    alphabets_model( picture:"assets/images/10452.jpg"),
    alphabets_model( picture:"assets/images/8795.jpg"),







  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Months",style: TextStyle(
          color: Colors.red.shade900,fontSize: 35,fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
     backgroundColor: Colors.white,
      // body: ListView.builder(
      //   itemCount: alpha.length,
      //     itemBuilder:(context,index){
      //     var var_alpha =alpha[index];
      //   return Column(
      //     children: [
      //       SizedBox(height: 30,),
      //       Container(
      //
      //       ),
      //       Container(
      //         height: 350,
      //         width: 350,
      //
      //         decoration: BoxDecoration(
      //             //color: Colors.yellow,
      //
      //           image: DecorationImage(image: AssetImage(var_alpha.picture,),fit: BoxFit.fitHeight,)
      //         ),
      //
      //
      //         ) ,
      //       SizedBox(height: 20,),
      //       Container(height: 30,width: 350,color: Colors.grey),
      //
      //       // Text(alpha[index].name,
      //       //   style: TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold,fontSize: 60),),
      //
      //       // CircleAvatar(
      //       //   radius: 20,
      //       //   backgroundColor: Colors.transparent,
      //       //   backgroundImage: AssetImage(var_alpha.picture),
      //       //   //child: Icon(Icons.person),
      //       // ),
      //     ],
      //   );
      // }),


    );
}}

class alphabets_model{
  final String picture;
  alphabets_model({required this.picture});
}

