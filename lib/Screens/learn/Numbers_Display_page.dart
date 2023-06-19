import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Numbers_Display extends StatefulWidget {
  const Numbers_Display({Key? key}) : super(key: key);

  @override
  _Numbers_DisplayState createState() => _Numbers_DisplayState();
}

class _Numbers_DisplayState extends State<Numbers_Display> {
  List<dynamic> alpha = [
    alphabets_model(picture: "assets/images/one-finger.png", no: '1',),
    alphabets_model(picture: "assets/images/2.png", no: '2'),
    alphabets_model(picture: "assets/images/3.png", no: '3'),
    alphabets_model(picture: "assets/images/4.png", no: '4'),
    alphabets_model(picture: "assets/images/5.png", no: '5'),
    alphabets_model(picture: "assets/images/6.png", no: '6'),
    alphabets_model(picture: "assets/images/7.png", no: '7'),
    alphabets_model(picture: "assets/images/8.png", no: '8'),
    alphabets_model(picture: "assets/images/9.png", no: '9'),
    alphabets_model(picture: "assets/images/10.png", no: '10'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Numbers",
          style: TextStyle(
            color: Colors.red.shade900,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: alpha.length,
          itemBuilder: (context, index) {
            var var_alpha = alpha[index];
            return Column(
              children: [
                SizedBox(
                  height: 30,
                ),

                Container(
                  child: Text(var_alpha.no,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                      //color: Colors.yellow,

                      image: DecorationImage(
                    image: AssetImage(
                      var_alpha.picture,
                    ),
                    fit: BoxFit.fitHeight,
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(height: 30, width: 350, color: Colors.grey),

                // Text(alpha[index].name,
                //   style: TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold,fontSize: 60),),

                // CircleAvatar(
                //   radius: 20,
                //   backgroundColor: Colors.transparent,
                //   backgroundImage: AssetImage(var_alpha.picture),
                //   //child: Icon(Icons.person),
                // ),
              ],
            );
          }),
    );
  }
}

class alphabets_model {
  final String picture;
  final String no;

  alphabets_model({required this.picture,required this.no});
}
