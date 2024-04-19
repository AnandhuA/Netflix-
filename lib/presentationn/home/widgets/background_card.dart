import 'package:flutter/material.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/api/urls.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentationn/widgets/custom_button.dart';

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("$imageUrl${trendingUrls[0]}"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomButtonWidget(icon: Icons.add, title: "My List"),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                  backgroundColor: colorWhite,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                icon: const Icon(
                  Icons.play_arrow,
                  color: colorBlack,
                  size: 30,
                ),
                label: const Text(
                  "Play",
                  style: TextStyle(
                    color: textBlack,
                    fontSize: 20,
                  ),
                ),
              ),
              const CustomButtonWidget(
                icon: Icons.info_outline,
                title: "info",
              ),
            ],
          ),
        )
      ],
    );
  }
}
