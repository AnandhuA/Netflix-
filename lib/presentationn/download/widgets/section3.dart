import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/sizes.dart';

class DownloadsScreenSection3 extends StatelessWidget {
  const DownloadsScreenSection3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 15),
            color: buttonColorBlue,
            onPressed: () {
             
            },
            child: const Text(
              "Set Up",
              style: TextStyle(color: textWhite, fontSize: 20),
            ),
          ),
        ),
        kHeight,
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 15),
            color: buttonColorWhite,
            onPressed: () {},
            child: const Text(
              "See What you can download",
              style: TextStyle(fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
