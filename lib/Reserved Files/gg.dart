// import 'package:flutter/material.dart';
// import 'package:chewie/chewie.dart';
// import 'package:video_player/video_player.dart';
//
//
//
// class vdeoplayer extends StatefulWidget {
//   const vdeoplayer({Key? key}) : super(key: key);
//
//   @override
//   State<vdeoplayer> createState() => _vdeoplayerState();
// }
//
// class _vdeoplayerState extends State<vdeoplayer> {
//   late VideoPlayerController videoPlayerController;
//   ChewieController? chewieController ;
//
//   // Future initializeVideo() async {
//   //   videoPlayerController = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
//   //
//   //   await videoPlayerController.initialize();
//   //
//   //   chewieController = ChewieController(
//   //     videoPlayerController: videoPlayerController,
//   //     autoPlay: true,
//   //     looping: true,
//   //   );
//   //   setState(() { });
//   //   @override
//   //   void initState() {
//   //     initializeVideo();
//   //     super.initState();
//   //   }
//
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _initPlayer();
//   // }
//
//   // void _initPlayer() async {
//   //   videoPlayerController = VideoPlayerController.network(
//   //       'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
//   //   await videoPlayerController.initialize();
//
//   void _initPlayer() async {
//     videoPlayerController = VideoPlayerController.asset('assets/Family.mp4');
//     await videoPlayerController.initialize();
//
//
//     chewieController = ChewieController(
//       videoPlayerController: videoPlayerController,
//       autoPlay: true,
//       looping: true,
//       additionalOptions: (context) {
//         return <OptionItem>[
//           OptionItem(
//             onTap: () => debugPrint('Option 1 pressed!'),
//             iconData: Icons.chat,
//             title: 'Option 1',
//           ),
//           OptionItem(
//             onTap: () => debugPrint('Option 2 pressed!'),
//             iconData: Icons.share,
//             title: 'Option 2',
//           ),
//         ];
//       },
//     );
//   }
//
//   @override
//   void dispose() {
//     videoPlayerController.dispose();
//     chewieController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,backgroundColor: Colors.white,
//       ),
//       body: Stack(
//         children: <Widget>[
//           Positioned(
//             child: Container(
//               height:200,
//             //  width: 800,
//               // color: Colors.red,
//               child: Chewie(
//                 controller: chewieController,
//               ),
//             ),
//           ),
//         ],
//       ),
//
//
//       //
//       // body: chewieController!=null? Padding(
//       //   padding: EdgeInsets.symmetric(vertical: 20),
//       //   child: Chewie(
//       //     controller: chewieController!,
//       //   ),
//       // ) : Center(
//       //   child: CircularProgressIndicator(),
//       // ),
//     );
//   }
// }
//
// // import 'package:video_player/video_player.dart';
// // import 'package:flutter/material.dart';
// //
// //
// //
// // class BackgroundVideo extends StatefulWidget {
// //   @override
// //   _BackgroundVideoState createState() => _BackgroundVideoState();
// // }
// //
// // class _BackgroundVideoState extends State<BackgroundVideo> {
// //   late VideoPlayerController _controller;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = VideoPlayerController.network(
// //         'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
// //       ..initialize().then((_) {
// //         _controller.play();
// //         _controller.setLooping(true);
// //         // Ensure the first frame is shown after the video is initialized
// //         setState(() {});
// //       });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         body: Stack(
// //           children: <Widget>[
// //             Positioned(
// //               top: 100,
// //               child: Container(
// //                 height: 500,
// //                 width: 500,
// //                 color: Colors.red,
// //                 child: FittedBox(
// //                   fit: BoxFit.cover,
// //                   child: SizedBox(
// //                     width: _controller.value.size?.width ?? 0,
// //                     height: _controller.value.size?.height ?? 0,
// //                     child: VideoPlayer(_controller),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _controller.dispose();
// //   }
// // }
// //
//
//
//
//   // Future initializeVideo() async {
//   //   videoPlayerController = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
//   //
//   //   await videoPlayerController.initialize();
//   //
//   //   chewieController = ChewieController(
//   //     videoPlayerController: videoPlayerController,
//   //     autoPlay: true,
//   //     looping: true,
//   //   );
//   //   setState(() { });
//   //   @override
//   //   void initState() {
//   //     initializeVideo();
//   //     super.initState();
//   //   }
//
//
//
//
//
