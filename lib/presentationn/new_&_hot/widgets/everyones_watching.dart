import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/new_&_hot/widgets/video_player.dart';
import 'package:netflix/presentationn/widgets/custom_button.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: comingSoon.length,
      itemBuilder: (context, index) {
        return SizedBox(
          width: double.infinity,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comingSoon[index].title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              Text(
                comingSoon[index].overview,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              kHeight20,
              VideoPlayerWidget(
                videoKey: comingSoon[index].videoKey,
                height: 250,
              ),
              kHeight20,
              const Row(
                children: [
                  Spacer(),
                  CustomButtonWidget(
                    icon: CupertinoIcons.location_fill,
                    title: "Share",
                    iconSize: 30,
                    titleSize: 15,
                  ),
                  kWidth20,
                  CustomButtonWidget(
                    icon: Icons.add,
                    title: "My List",
                    iconSize: 30,
                    titleSize: 15,
                  ),
                  kWidth20,
                  CustomButtonWidget(
                    icon: Icons.play_arrow,
                    title: "Play",
                    iconSize: 30,
                    titleSize: 15,
                  ),
                  kWidth20
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
