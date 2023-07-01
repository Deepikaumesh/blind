import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class GrandFather_Detail_Page extends StatefulWidget {
  const GrandFather_Detail_Page({Key? key}) : super(key: key);

  @override
  _GrandFather_Detail_PageState createState() => _GrandFather_Detail_PageState();
}

class _GrandFather_Detail_PageState extends State<GrandFather_Detail_Page> {
  final FlickManager flickmanager = FlickManager(
      videoPlayerController: VideoPlayerController.asset("assets/Grandpa.mp4"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          Text("Grand Father", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
              fontSize: 30),),
          Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: FlickVideoPlayer(
                flickManager: flickmanager,
              )),
          SizedBox(
            height: 30,
          ),
          Text(
            "Family Members",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade600,
                fontSize: 25),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              contas("assets/father.png", "Father"),
              contas("assets/images/mother.png", "Mother"),
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              contas("assets/grandfather.png", "Grand Father"),
              contas("assets/images/grandmother.png", "Grand Mother"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              contas("assets/brother.png", "Brother"),
              contas("assets/images/sister.png", "Sister"),
            ],
          ),

        ],
      ),
    );
  }

  contas(String url, String title) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),

          SizedBox(height: 100, child: Image(image: AssetImage(url))),
          SizedBox(height: 10,),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}