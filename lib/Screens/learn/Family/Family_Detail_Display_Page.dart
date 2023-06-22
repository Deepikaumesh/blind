
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class Family_Detail_Display_Page extends StatefulWidget {
  Family_Detail_Display_Page() : super();


  @override
  Family_Detail_Display_PageState createState() => Family_Detail_Display_PageState();
}

class Family_Detail_Display_PageState extends State<Family_Detail_Display_Page> {
  //
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    _controller = VideoPlayerController.asset("assets/Family.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Family",
          style: TextStyle(
            color: Colors.red.shade900,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body:
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return SizedBox(
                  height: 500,
                  width: 500,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 100,vertical: 50),
                    child: FittedBox(
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      child: SizedBox(
                        // height: MediaQuery.of(context).size.height/2,
                        // width: MediaQuery.of(context).size.width/2,
                        height: _controller.value.size.height,
                        width: _controller.value.size.width,
                        child: VideoPlayer(
                          _controller,
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),

          // )
          // SizedBox(
          //   height: 30,
          // ),



          // SizedBox(
          //   height: 55,
          //   width: 250,
          //   child: ElevatedButton(
          //     onPressed: () {
          //       setState(() {
          //         if (_controller.value.isPlaying) {
          //           _controller.pause();
          //         } else {
          //           _controller.play();
          //         }
          //       });
          //     },
          //     child: Text(
          //       _controller.value.isPlaying ? "pause" : "play",
          //       style: TextStyle(fontSize: 30),
          //     ),
          //     style: ElevatedButton.styleFrom(
          //         primary: _controller.value.isPlaying
          //             ? Colors.red.shade900
          //             : Colors.green,
          //         // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          //         textStyle:
          //             TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          //   ),
          // ),






         );
  }
}




