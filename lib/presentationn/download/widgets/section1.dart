import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/sizes.dart';

class DownloadsScreenSection1 extends StatelessWidget {
  const DownloadsScreenSection1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kWidth,
        Icon(
          Icons.settings,
          color: colorWhite,
        ),
        kWidth,
        Text(
          "Smart Downloads",
          style: TextStyle(fontSize: 17),
        )
      ],
    );
  }
}
