
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class Colors_Display_Page extends StatefulWidget {
  Colors_Display_Page() : super();


  @override
  Colors_Display_PageState createState() => Colors_Display_PageState();
}

class Colors_Display_PageState extends State<Colors_Display_Page> {
  //
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    //_controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    _controller = VideoPlayerController.asset("assets/colors.mp4");
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
          "Colors",
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
                    "RED",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.red),
                  ),
                  Text(
                    "PINK",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.pink.shade300),
                  ),
                  Text(
                    "ORANGE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.orange),
                  ),

                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "WHITE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        backgroundColor: Colors.black,
                        color: Colors.white),
                  ),
                  Text(
                    "BLACK",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                  Text(
                    "GREY",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.grey),
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
                    "PURPLE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.purple),
                  ),
                  Text(
                    "BLUE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.blue),
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
                    "GREEN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.green),
                  ),
                  Text(
                    "YELLOW",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.yellow),
                  ),

                ],
              ),
              SizedBox(height: 30,),


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
