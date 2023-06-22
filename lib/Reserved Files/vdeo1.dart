// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[100],
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text('Video Player Demo'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: [
//           VideoItems(
//             videoPlayerController:
//             VideoPlayerController.asset('assets/Grandpa.mp4'),
//             looping: true,
//             autoplay: true,
//           ),
//           VideoItems(
//             videoPlayerController:
//             VideoPlayerController.asset('assets/Family.mp4'),
//             looping: false,
//             autoplay: false,
//           ),
//           VideoItems(
//             videoPlayerController:
//             VideoPlayerController.asset('assets/Family.mp4'),
//             looping: false,
//             autoplay: false,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
// class VideoItems extends StatefulWidget {
//   final VideoPlayerController videoPlayerController;
//   final bool looping;
//   final bool autoplay;
//
//   VideoItems(
//       {required this.videoPlayerController,
//         required this.looping,
//         required this.autoplay,});
//
//
//   @override
//   _VideoItemsState createState() => _VideoItemsState();
// }
//
// class _VideoItemsState extends State<VideoItems> {
//   late ChewieController _chewieController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _chewieController = ChewieController(
//         videoPlayerController: widget.videoPlayerController,
//         aspectRatio: 6 / 8,
//         autoInitialize: true,
//         autoPlay: widget.autoplay,
//         looping: widget.looping,
//         errorBuilder: (context, errorMesaage) {
//           return Center(
//             child: Text(
//               errorMesaage,
//               style: TextStyle(color: Colors.red),
//             ),
//           );
//         });
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _chewieController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Chewie(
//         controller: _chewieController,
//       ),
//     );
//   }
