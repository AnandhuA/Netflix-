import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/download/widgets/image_widget.dart';

class DownloadsScreenSection2 extends StatelessWidget {
  const DownloadsScreenSection2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Indroducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        kHeight,
        const Text(
          textAlign: TextAlign.center,
          "We will download a personalised selection of\nmovies and shows for you,so there's\nalways somethig to watch on your\ndevice",
          style: TextStyle(color: textGrey, fontSize: 15),
        ),
        SizedBox(
          height: size.width,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                radius: size.width * 0.34,
              ),
              DownloadsImageWidget(
                size: Size(
                  size.width * 0.4,
                  size.width * 0.49,
                ),
                index: 0,
                rotateion: 15 * pi / 180,
                margin: const EdgeInsets.only(
                  left: 200,
                  bottom: 20,
                ),
              ),
              DownloadsImageWidget(
                size: Size(
                  size.width * 0.4,
                  size.width * 0.49,
                ),
                index: 1,
                rotateion: -15 * pi / 180,
                margin: const EdgeInsets.only(
                  right: 200,
                  bottom: 20,
                ),
              ),
              DownloadsImageWidget(
                size: Size(
                  size.width * 0.35,
                  size.width * 0.53,
                ),
                index: 2,
                margin: const EdgeInsets.only(
                  top: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
