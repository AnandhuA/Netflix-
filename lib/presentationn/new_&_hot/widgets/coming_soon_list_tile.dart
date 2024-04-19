import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/widgets/custom_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CommingSoonListTile extends StatefulWidget {
  final int index;
  const CommingSoonListTile({
    super.key,
    required this.index,
  });

  @override
  State<CommingSoonListTile> createState() => _CommingSoonListTileState();
}

class _CommingSoonListTileState extends State<CommingSoonListTile> {
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.parse(comingSoon[widget.index].releaseDate);
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  DateFormat('MMM').format(date),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  date.day.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 350,
            width: size.width - 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 200,
                  child: comingSoon[widget.index].videoKey == null
                      ? const Center(child: Text("video is not available"))
                      : YoutubePlayer(
                          controller: YoutubePlayerController(
                            initialVideoId: comingSoon[widget.index].videoKey!,
                            flags: const YoutubePlayerFlags(
                              autoPlay: false,
                              mute: false,
                            ),
                          ),
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.red,
                          progressColors: const ProgressBarColors(
                            playedColor: Colors.red,
                            handleColor: Colors.redAccent,
                          ),
                        ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        comingSoon[widget.index].title,
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    kWidth,
                    const CustomButtonWidget(
                      icon: Icons.notifications,
                      title: "Remined Me",
                      iconSize: 25,
                      titleSize: 12,
                    ),
                    kWidth20,
                    const CustomButtonWidget(
                      icon: Icons.info_outline,
                      title: "Info",
                      iconSize: 25,
                      titleSize: 12,
                    ),
                    kWidth20
                  ],
                ),
                kHeight,
                Text("Coming on ${DateFormat('EEEE').format(date)}")
              ],
            ),
          )
        ],
      ),
    );
  }
}
