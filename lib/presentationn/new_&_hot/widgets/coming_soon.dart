import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/new_&_hot/widgets/video_player.dart';
import 'package:netflix/presentationn/widgets/custom_button.dart';


class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: comingSoon.length,
      itemBuilder: (context, index) {
        DateTime date = DateTime.parse(comingSoon[index].releaseDate);
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 400,
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
                height: 400,
                width: size.width - 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VideoPlayerWidget(videoKey: comingSoon[index].videoKey),
                 
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            comingSoon[index].title,
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
                    Text("Coming on ${DateFormat('EEEE').format(date)}"),
                    kHeight20,
                    Expanded(
                      child: Text(
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                        comingSoon[index].overview,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
