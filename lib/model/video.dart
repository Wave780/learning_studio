class Video {
  final String number;
  final String name;
  final String assetPath;

  Video({required this.name, required this.assetPath, required this.number});
}

final videos = [
  Video(
    number: "1",
    name: "Introduction Part 1",
    assetPath: 'assets/video/videoplayback.mp4',
  ),
  Video(
      name: "Introduction Part 2",
      assetPath: 'assets/video/videoplayback.mp4',
      number: "2"),
  Video(
      name: "Introduction Part 3",
      assetPath: 'assets/video/videoplayback.mp4',
      number: "3"),
];
