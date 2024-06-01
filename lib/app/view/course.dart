import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  late CustomVideoPlayerController customVideoPlayerController;

  String videoSource = 'assets/video/videoplayback.mp4';
  @override
  void initState() {
    super.initState();
    initalizeVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomVideoPlayer(
        customVideoPlayerController: customVideoPlayerController,
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
        context: context,
        videoPlayerController: videoPlayerController);
  }
}


 
// class _ProgressText extends StatefulWidget {
//   final VideoPlayerController controller;

//   const _ProgressText({
//     super.key,
//     required this.controller,
//   });

//   @override
//   __ProgressTextState createState() => __ProgressTextState();
// }

// class __ProgressTextState extends State<_ProgressText> {
//   late VoidCallback _listener;

//   __ProgressTextState() {
//     _listener = () {
//       setState(() {});
//     };
//   }

//   @override
//   void initState() {
//     super.initState();
//     widget.controller.addListener(_listener);
//   }

//   @override
//   void deactivate() {
//     widget.controller.removeListener(_listener);
//     super.deactivate();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final String position = widget.controller.value.position.toString();
//     final String duration = widget.controller.value.duration.toString();
//     return Text('$position / $duration');
//   }
// }
//  Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 20,
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AspectRatio(
//               aspectRatio: controller!.value.aspectRatio,
//               child: VideoPlayer(controller!),
//             ),
//             VideoProgressIndicator(
//               controller!,
//               allowScrubbing: true,
//             ),
//             _ProgressText(controller: controller!),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     controller
//                         ?.seekTo(Duration.zero)
//                         .then((_) => controller?.play());
//                   },
//                   icon: Icon(Icons.refresh),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.play_arrow),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     controller?.pause();
//                   },
//                   icon: Icon(Icons.pause),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ), 