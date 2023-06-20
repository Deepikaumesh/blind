import 'package:deaf_dump/main.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

class Weeks_Display_Page extends StatefulWidget {
  Weeks_Display_Page() : super();

  final String title = "Video Demo";

  @override
  Weeks_Display_PageState createState() => Weeks_Display_PageState();
}

class Weeks_Display_PageState extends State<Weeks_Display_Page> {
  //
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    _controller = VideoPlayerController.asset("assets/days.mp4");
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
          "Days in a Week",
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
      body: Column(
        children: [
          Flexible(
            child: FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return SizedBox(
                    child: FittedBox(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.contain,
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
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),

          // )
          SizedBox(
            height: 30,
          ),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "SUNDAY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.orange),
                  ),
                  Text(
                    "MONDAY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.yellow.shade600),
                  ),

                  // Text("TUESDAY"),
                  // Text("WEDNESDAY"),
                  // Text("THURSDAY"),
                  // Text("FRIDAY"),
                  // Text("SATARDAY"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "TUESDAY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.red.shade600),
                  ),
                  Text(
                    "WEDNESDAY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue.shade600),
                  ),

                  // Text("TUESDAY"),
                  // Text("WEDNESDAY"),
                  // Text("THURSDAY"),
                  // Text("FRIDAY"),
                  // Text("SATARDAY"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "THURSDAY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.brown.shade600),
                  ),
                  Text(
                    "FRIDAY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.green.shade600),
                  ),

                  // Text("TUESDAY"),
                  // Text("WEDNESDAY"),
                  // Text("THURSDAY"),
                  // Text("FRIDAY"),
                  // Text("SATARDAY"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "SATARDAY",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.grey.shade600),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 55,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    _controller.play();
                  }
                });
              },
              child: Text(
                _controller.value.isPlaying ? "pause" : "play",
                style: TextStyle(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                  primary: _controller.value.isPlaying
                      ? Colors.red.shade900
                      : Colors.green,
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          ),

          Container(
            //   color: Colors.yellow,
            height: 100,
            width: 200,
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Monday',
                    textStyle: TextStyle(
                      fontSize: 30,
                      color: Colors.red.shade900,
                      //backgroundColor: Colors.blue
                    )),
                RotateAnimatedText('Tuesday',
                    textStyle: TextStyle(
                        letterSpacing: 3,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange)),
                RotateAnimatedText(
                  'Wednesday',
                  textStyle: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
              isRepeatingAnimation: true,
              totalRepeatCount: 10,
              pause: Duration(milliseconds: 3000),
            ),
          ),

          Center(
            child: AnimatedTextKit(
              totalRepeatCount: 40,
              animatedTexts: [
                FadeAnimatedText(
                  'Sunday',
                  textStyle: const TextStyle(
                      color: Colors.orange,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
                ScaleAnimatedText(
                  'Monday',
                  duration: Duration(milliseconds: 4000),
                  textStyle:
                  const TextStyle(color: Colors.yellow, fontSize: 50.0),
                ),
                FadeAnimatedText(
                  'Tuesday',
                  textStyle: const TextStyle(
                      color: Colors.red,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
                ScaleAnimatedText(
                  'Wednesday',
                  duration: Duration(milliseconds: 4000),
                  textStyle:
                  const TextStyle(color: Colors.blue, fontSize: 50.0),
                ),
                FadeAnimatedText(
                  'Thursday',
                  textStyle: const TextStyle(
                      color: Colors.brown,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
                ScaleAnimatedText(
                  'friday',
                  duration: Duration(milliseconds: 4000),
                  textStyle:
                  const TextStyle(color: Colors.green, fontSize: 50.0),
                ),
                FadeAnimatedText(
                  'Satarday',
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         _controller.play();
      //       }
      //     });
      //   },
      //   child:
      //   Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      // ),
    );
  }
}
