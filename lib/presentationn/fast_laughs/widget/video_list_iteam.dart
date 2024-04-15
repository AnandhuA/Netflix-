import 'package:flutter/material.dart';
import 'package:netflix/presentationn/fast_laughs/widget/video_action_widgets.dart';
import 'package:netflix/presentationn/search/widgets/search_result_iteams.dart';

class VideoListIteam extends StatelessWidget {
  final int index;
  const VideoListIteam({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
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
                      backgroundImage: NetworkImage(url),
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
                      icon: Icon(Icons.share),
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
