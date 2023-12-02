import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:url_launcher/url_launcher.dart';

class Sos_Message extends StatefulWidget {
  const Sos_Message({Key? key}) : super(key: key);

  @override
  _Sos_MessageState createState() => _Sos_MessageState();
}

class _Sos_MessageState extends State<Sos_Message> {

  void sending_SMS(String msg, List<String> list_receipents) async {
    String send_result = await sendSMS(message: msg, recipients: list_receipents)
        .catchError((err) {
      print(err);
    });
    print(send_result);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child:Column(
        children: [

          TextButton(onPressed: (){
            setState(() {
              sending_SMS('Hello, this the test message', ['9526843393',]);
            });
          },child: Text("test"),)

        ],
      ),),

    );
  }
}
//
// import 'package:flutter/material.dart';
// // import 'package:flutter/cupertino.dart'; Unused Dependency
// import 'package:url_launcher/url_launcher.dart';
//
// // app build process is triggered here
// void main() => runApp(const Sos_Message());
//
// _sendingMails() async {
//   var url = Uri.parse("mailto:feedback@geeksforgeeks.org");
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
//
// _sendingSMS() async {
//   var url = Uri.parse("sms://9526843393");
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
//
//
//
// class Sos_Message extends StatefulWidget {
//   const Sos_Message({Key? key}) : super(key: key);
//
//   @override
//   State<Sos_Message> createState() => _Sos_MessageState();
// }
//
// class _Sos_MessageState extends State<Sos_Message> {
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Geeks for Geeks'),
//           backgroundColor: Colors.green,
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               children: [
//                 Container(
//                   height: 200.0,
//                 ),
//                 const Text(
//                   'Welcome to GFG!',
//                   style: TextStyle(
//                     fontSize: 35.0,
//                     color: Colors.green,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Container(
//                   height: 20.0,
//                 ),
//                 const Text(
//                   'For any Queries, Mail us',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.green,
//                     //fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Container(
//                   height: 10.0,
//                 ),
//                 ElevatedButton(
//                   onPressed: _sendingMails,
//                   style: ButtonStyle(
//                     padding:
//                     MaterialStateProperty.all(const EdgeInsets.all(5.0)),
//                     textStyle: MaterialStateProperty.all(
//                       const TextStyle(color: Colors.black),
//                     ),
//                   ),
//                   child: const Text('Here'),
//                 ), // ElevatedButton
//
//                 // DEPRECATED
//                 // RaisedButton(
//                 // onPressed: _sendingMails,
//                 // child: Text('Here'),
//                 // textColor: Colors.black,
//                 // padding: const EdgeInsets.all(5.0),
//                 // ),
//                 Container(
//                   height: 20.0,
//                 ),
//                 const Text(
//                   'Or Send SMS',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.green,
//                     //fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Container(
//                   height: 10.0,
//                 ),
//                 ElevatedButton(
//                   onPressed: _sendingSMS,
//                   style: ButtonStyle(
//                     padding:
//                     MaterialStateProperty.all(const EdgeInsets.all(5.0)),
//                     textStyle: MaterialStateProperty.all(
//                       const TextStyle(color: Colors.black),
//                     ),
//                   ),
//                   child: const Text('Here'),
//                 ), // ElevatedButton
//
//                 // DEPRECATED
//                 // RaisedButton(
//                 // onPressed: _sendingSMS,
//                 // textColor: Colors.black,
//                 // padding: const EdgeInsets.all(5.0),
//                 // child: Text('Here'),
//                 // ), child: const Text('Here'),
//                 TextButton(
//                   onPressed: _launchPhone,
//                   child: Text("+919526843393"),
//                 )
//
//                 //
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   final url = 'sms://+91 9526843393';
//
//   void _launchPhone() async {
//     if (!await launch(
//       url,
//     )) throw 'Could not launch $url';
//   }
// }
