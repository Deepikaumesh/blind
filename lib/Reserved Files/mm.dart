// import 'package:deaf_dump/page/basics_page.dart';
// import 'package:deaf_dump/page/orientation_page.dart';
// import 'package:flutter/material.dart';
//
//
// final urlLandscapeVideo =
//     'https://assets.mixkit.co/videos/preview/mixkit-group-of-friends-partying-happily-4640-large.mp4';
// final urlPortraitVideo =
//     'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4';
// final urlYoutubeVideo = 'https://youtube.com/watch?v=HSAa9yi0OMA';
//
//
//
// class videoplayer_fullscreen extends StatefulWidget {
//   @override
//   _videoplayer_fullscreenState createState() => _videoplayer_fullscreenState();
// }
//
// class _videoplayer_fullscreenState extends State<videoplayer_fullscreen> {
//   int index = 0;
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//     bottomNavigationBar: buildBottomBar(),
//     body: buildPages(),
//   );
//
//   Widget buildBottomBar() {
//     final style = TextStyle(color: Colors.white);
//
//     return BottomNavigationBar(
//       backgroundColor: Theme.of(context).primaryColor,
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.white70,
//       currentIndex: index,
//       items: [
//         BottomNavigationBarItem(
//         //  icon: Text('VideoPlayer', style: style),
//           icon: Icon(Icons.monetization_on_rounded),
//           label: 'VideoPlayer',
//
//           //title: Text('Basics'),
//         ),
//         BottomNavigationBarItem(
//          // icon: Text('VideoPlayer', style: style),
//           icon: Icon(Icons.monetization_on_rounded),
//           label: 'VideoPlayer',
//         ),
//       ],
//       onTap: (int index) => setState(() => this.index = index),
//     );
//   }
//
//   Widget buildPages() {
//     switch (index) {
//       case 0:
//         return BasicsPage();
//       case 1:
//         return OrientationPage();
//       default:
//         return Container();
//     }
//   }
// }