import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';


import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.video_library_sharp),
            title: Text("Video 1"),
            tileColor: Colors.grey[200],
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VideoPlay()));
            },
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.video_library_sharp),
            title: Text("Video 2"),
            tileColor: Colors.grey[200],
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.video_library_sharp),
            title: Text("Video 3"),
            tileColor: Colors.grey[200],
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.video_library_sharp),
            title: Text("Video 4"),
            tileColor: Colors.grey[200],
          ),
          SizedBox(
            height: 2,
          ),
          ListTile(
            leading: Icon(Icons.video_library_sharp),
            title: Text("Video 5"),
            tileColor: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}

class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/video1.mp4');
    _videoPlayerController!.initialize().then((_) => {
          _chewieController = ChewieController(
            videoPlayerController: _videoPlayerController!,
          ),
          setState(() {
            print('Video Play Successfully');
          })
        });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    _chewieController!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: _chewieVideoPlayer(),
    );
  }

  Widget _chewieVideoPlayer() {
    return Column(
      children: [
        _chewieController != null && _videoPlayerController != null
            ? Container(child: Chewie(controller: _chewieController!))
            : Container(
                height: 1200,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
        // VideoProgressIndicator(
        //   _videoPlayerController!,
        //   allowScrubbing: true,
        //   colors: VideoProgressColors(
        //     backgroundColor: Styles.primary3,
        //     playedColor: Styles.primary1,
        //     bufferedColor: Styles.secondary3,
        //   ),
        // )
      ],
    );
  }
}



// 1 widget
// class AssetPlayerWidget extends StatefulWidget {
//   const AssetPlayerWidget({super.key});

//   @override
//   State<AssetPlayerWidget> createState() => _AssetPlayerWidgetState();
// }

// class _AssetPlayerWidgetState extends State<AssetPlayerWidget> {
//   final video = 'assets/videos/video1.mp4';
//   VideoPlayerController? controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = VideoPlayerController.asset(video)
//       ..addListener(() => setState(() {}))
//       ..setLooping(true)
//       ..initialize().then((_) => controller!.play());
//   }

//   @override
//   void dispose() {
//     controller!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return VideoPlayerWidget(controller: controller!);
//   }
// }

// //2 widget
// class VideoPlayerWidget extends StatefulWidget {
//   const VideoPlayerWidget(
//       {super.key, required VideoPlayerController controller});

//   @override
//   State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
// }

// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   VideoPlayerController? controller;

//   @override
//   Widget build(BuildContext context) =>
//       controller != null && controller!.value.isInitialized
//           ? Container(alignment: Alignment.topCenter, child: buildVideo())
//           : Container(
//               height: 200,
//               child: Center(child: CircularProgressIndicator()),
//             );

//   Widget buildVideo() => buildVideoPlayer();

//   Widget buildVideoPlayer() => AspectRatio(
//         aspectRatio: controller!.value.aspectRatio,
//         child: VideoPlayer(controller!),
//       );
// }
