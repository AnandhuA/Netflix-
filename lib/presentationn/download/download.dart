import 'package:flutter/material.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/download/widgets/section2.dart';
import 'package:netflix/presentationn/download/widgets/section1.dart';
import 'package:netflix/presentationn/download/widgets/section3.dart';
import 'package:netflix/presentationn/widgets/app_bar_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          DownloadsScreenSection1(),
          kHeight50,
          DownloadsScreenSection2(),
          kHeight50,
          DownloadsScreenSection3()
        ],
      ),
    );
  }
}
