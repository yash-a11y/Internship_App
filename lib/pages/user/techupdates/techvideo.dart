import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

import '../../../utills/app_styles.dart';

class TechVideo extends StatefulWidget {
  const TechVideo({super.key});

  @override
  State<TechVideo> createState() => _TechVideoState();
}

class _TechVideoState extends State<TechVideo> {
  VideoPlayerController? _videocontroller;

  @override
  void initState() {
    super.initState();
    _videocontroller = VideoPlayerController.asset("assets/videos/android.mp4")
      ..initialize().then((_) {
        setState(() {});
        _videocontroller!.play();
      });
  }

  @override
  void dispose() {
    _videocontroller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, inner) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverSafeArea(
              top: false,
              sliver: SliverAppBar(
                backgroundColor: Styles.primary1,
                expandedHeight: 130.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "What's new in\nandroid 12 ?",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  background: Stack(
                    children: [
                      Positioned(
                        top: -30,
                        right: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 19, color: Styles.secondary),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
        body: Scaffold(
          body: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Styles.secondary,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Column(
                    children: [
                      _videocontroller != null
                          ? AspectRatio(
                              aspectRatio: _videocontroller!.value.aspectRatio,
                              child: VideoPlayer(_videocontroller!),
                            )
                          : Container(),
                      VideoProgressIndicator(
                        _videocontroller!,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                          backgroundColor: Styles.primary3,
                          playedColor: Styles.primary1,
                          bufferedColor: Styles.secondary3,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Styles.secondary),
                            fixedSize: MaterialStateProperty.all(Size(70, 70)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)))),
                        onPressed: () {
                          _videocontroller!.pause();
                        },
                        child: Icon(Icons.pause),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Styles.primary1),
                              fixedSize:
                                  MaterialStateProperty.all<Size>(Size(80, 80)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100)))),
                          onPressed: () {
                            _videocontroller!.play();
                          },
                          child: Icon(Icons.play_arrow)),
                      Padding(padding: EdgeInsets.all(3)),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Styles.secondary),
                              fixedSize:
                                  MaterialStateProperty.all(Size(70, 70)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(100)))),
                          onPressed: () {
                            _videocontroller!.seekTo(Duration(
                                seconds:
                                    _videocontroller!.value.position.inSeconds +
                                        10));
                          },
                          child: Icon(Icons.fast_forward)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .50,
                    child: SingleChildScrollView(
                      // padding: EdgeInsets.symmetric(horizontal: 11,vertical: 30),
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 19, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Styles.primary1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(
                              color: Styles.secondary,
                              thickness: 1.5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Summary",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Posted on : 25/02/23",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Divider(
                              color: Styles.secondary,
                              thickness: 1.5,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "- Colourful UI Design & Wallpaper-Based Material You Theme.\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "- Extra Large Clock Widget On The Lockscreen.\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "- New Quick Setting Tiles Design & New Tiles For Smart Home Controls, Digital Wallet, Internet, And Privacy Controls.\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "- Privacy Dashboard & Security Improvements\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "- Camera & Microphone Access Indicators\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "- One-Handed Mode\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "- Haptic Feedback With Audio\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              "- Google Discover Material You Theme\n",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
