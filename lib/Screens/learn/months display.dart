
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class Months_Display_Page extends StatefulWidget {
  Months_Display_Page() : super();


  @override
  Months_Display_PageState createState() => Months_Display_PageState();
}

class Months_Display_PageState extends State<Months_Display_Page> {
  //
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    _controller = VideoPlayerController.asset("assets/months.mp4");
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
          "Months of year",
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
                    "JANUARY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.orange),
                  ),
                  Text(
                    "FEBRUARY",
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
                    "MARCH",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.red.shade600),
                  ),
                  Text(
                    "APRIL",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue.shade600),
                  ),
                  Text(
                    "MAY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.purple),
                  ),


                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "JUNE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.brown.shade600),
                  ),
                  Text(
                    "JULY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.green.shade600),
                  ),
                  Text(
                    "AUGUEST",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.purpleAccent),
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
                    "SEPTEMBER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.grey.shade600),
                  ),
                  Text(
                    "OCTOBER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.red),
                  ),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "NOVEMBER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                  Text(
                    "DECEMBER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.teal),
                  ),

                ],
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





        ],
      ),
         );
  }
}
