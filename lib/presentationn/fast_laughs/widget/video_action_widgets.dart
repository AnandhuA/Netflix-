import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class VideoActionWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: icon,
            color: colorWhite,
            iconSize: 30,
          ),
          Text(title),
        ],
      ),
    );
  }
}
