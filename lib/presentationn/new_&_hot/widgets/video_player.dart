import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerWidget extends StatelessWidget {
  final String? videoKey;
  final double height;
  const VideoPlayerWidget(
      {super.key, required this.videoKey, this.height = 200});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      height: height,
      child: videoKey == null
          ? const Center(child: Text("video is not available"))
          : YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: videoKey!,
                flags: const YoutubePlayerFlags(
                  autoPlay: false,
                  mute: false,
                  disableDragSeek: true,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
              progressColors: const ProgressBarColors(
                playedColor: Colors.red,
                handleColor: Colors.redAccent,
              ),
            ),
    );
  }
}
