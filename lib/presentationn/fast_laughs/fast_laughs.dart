import 'package:flutter/material.dart';
import 'package:netflix/api/urls.dart';
import 'package:netflix/presentationn/fast_laughs/widget/video_list_iteam.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            videoList.length,
            (index) => VideoListIteam(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
