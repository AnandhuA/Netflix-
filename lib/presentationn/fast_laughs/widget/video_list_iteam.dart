import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/api/urls.dart';
import 'package:netflix/presentationn/fast_laughs/widget/video_action_widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoListIteam extends StatelessWidget {
  final int index;
  const VideoListIteam({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
          child: YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoList[index],
              flags: const YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
                enableCaption: false,
                loop: true,
                hideThumbnail: true,
                disableDragSeek: true,
                hideControls: true,
              ),
            ),
            aspectRatio: 9 / 16,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_off),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/netflix-icon.1024x1024.png",
                      ),
                    ),
                    VideoActionWidget(
                      icon: Icon(Icons.emoji_emotions),
                      title: "LOL",
                    ),
                    VideoActionWidget(
                      icon: Icon(Icons.add),
                      title: "My List",
                    ),
                    VideoActionWidget(
                      icon: Icon(CupertinoIcons.location_fill),
                      title: "Share",
                    ),
                    VideoActionWidget(
                      icon: Icon(Icons.play_arrow),
                      title: "Play",
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
