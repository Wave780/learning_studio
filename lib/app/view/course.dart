import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:learning_studio/app/utils/image.dart';
import 'package:learning_studio/app/view/video_info.dart';
import 'package:learning_studio/model/video.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  late CustomVideoPlayerController customVideoPlayerController;

  String videoSource = 'assets/video/videoplayback.mp4';

  void onVideoSelected(Video selectedVideo) {
    videoSource = selectedVideo.assetPath;
    initalizeVideoPlayer();
  }

  @override
  void initState() {
    super.initState();
    initalizeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomVideoPlayer(
            customVideoPlayerController: customVideoPlayerController,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'INTRODUCTION',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
          ),
          VideoListBuilder(
            videoList: videos,
            
            onVideoSelected: (selectedVideo) => onVideoSelected,
          )
        ],
      ),
    );
  }

  void initalizeVideoPlayer() {
    CachedVideoPlayerController videoPlayerController;
    videoPlayerController = CachedVideoPlayerController.asset(videoSource)
      ..initialize().then((value) {
        setState(() {});
      });
    customVideoPlayerController = CustomVideoPlayerController(
        context: context, videoPlayerController: videoPlayerController);
  }
}
