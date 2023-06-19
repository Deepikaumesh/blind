import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alphabets_Display extends StatefulWidget {
  const Alphabets_Display({Key? key}) : super(key: key);

  @override
  _Alphabets_DisplayState createState() => _Alphabets_DisplayState();
}

class _Alphabets_DisplayState extends State<Alphabets_Display> {

  List<dynamic> alpha = [
    alphabets_model( picture:"assets/images/a.png"),
    alphabets_model( picture:"assets/images/b.png"),
    alphabets_model( picture:"assets/images/c.png"),
    alphabets_model( picture:"assets/images/d.png"),
    alphabets_model( picture:"assets/images/e.png"),
    alphabets_model( picture:"assets/images/f.png"),
    alphabets_model( picture:"assets/images/g.png"),
    alphabets_model( picture:"assets/images/h.png"),
    alphabets_model( picture:"assets/images/i.png"),
    alphabets_model( picture:"assets/images/j.png"),
    alphabets_model( picture:"assets/images/k.png"),
    alphabets_model( picture:"assets/images/l.png"),
    alphabets_model( picture:"assets/images/m.png"),
    alphabets_model( picture:"assets/images/n.png"),
    alphabets_model( picture:"assets/images/o.png"),
    alphabets_model( picture:"assets/images/p.png"),
    alphabets_model( picture:"assets/images/q.png"),
    alphabets_model( picture:"assets/images/r.png"),
    alphabets_model( picture:"assets/images/s.png"),
    alphabets_model( picture:"assets/images/t.png"),
    alphabets_model( picture:"assets/images/u.png"),
    alphabets_model( picture:"assets/images/v.png"),
    alphabets_model( picture:"assets/images/w.png"),
    alphabets_model( picture:"assets/images/x.png"),
  //  alphabets_model( picture:"assets/images/"),
    alphabets_model( picture:"assets/images/y.png"),
    alphabets_model( picture:"assets/images/z.png"),






  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Alphabets",style: TextStyle(
          color: Colors.red.shade900,fontSize: 35,fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
     backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: alpha.length,
          itemBuilder:(context,index){
          var var_alpha =alpha[index];
        return Column(
          children: [
            SizedBox(height: 30,),
            Container(

            ),
            Container(
              height: 350,
              width: 350,

              decoration: BoxDecoration(
                  //color: Colors.yellow,

                image: DecorationImage(image: AssetImage(var_alpha.picture,),fit: BoxFit.fitHeight,)
              ),


              ) ,
            SizedBox(height: 20,),
            Container(height: 30,width: 350,color: Colors.grey),

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
}}

class alphabets_model{
  final String picture;
  alphabets_model({required this.picture});
}
