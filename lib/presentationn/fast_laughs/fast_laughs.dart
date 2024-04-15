import 'package:flutter/material.dart';
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
            20,
            (index) => VideoListIteam(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
