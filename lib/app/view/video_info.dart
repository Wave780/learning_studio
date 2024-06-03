import 'package:flutter/material.dart';

import 'package:learning_studio/app/utils/image.dart';
import 'package:learning_studio/model/video.dart';

class VideoListBuilder extends StatelessWidget {
  final List<Video> videoList;

  final Function(Video) onVideoSelected; // Callback for video selection

  const VideoListBuilder({
    super.key,
    required this.videoList,
    required this.onVideoSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: videoList.length,
      itemBuilder: (context, index) {
        final videoItem = videoList[index];
        return ListTile(
          trailing: CustomTrailingWidget(context, index),
          leading: Text(videoItem.number),
          title: Text(videoItem.name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: index == 0 ? Colors.orange[900] : Colors.black,
              )),
          onTap: () => onVideoSelected(videoItem),
        );
      },
    );
  }

  CustomTrailingWidget(context, index) {
    if (index == 0) {
      return const Image(image: AssetImage(AppAssetsImage.tickIcon));
    } else if (index == videos.length - 1) {
      return const Row(
        mainAxisSize: MainAxisSize.min, // Avoid unnecessary space
        children: [
          Image(image: AssetImage(AppAssetsImage.lockIcon)),
          SizedBox(
            width: 2,
          ),
          Text('24 min'),
        ],
      );
    } else {
      return const Text('24 min'); // Default trailing for other indexes
    }
  }
}
