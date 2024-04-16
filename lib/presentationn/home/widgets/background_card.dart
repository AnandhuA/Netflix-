import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentationn/home/widgets/custom_button.dart';

const mainImage =
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/hu40Uxp9WtpL34jv3zyWLb5zEVY.jpg";

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                mainImage,
              ),
              fit: BoxFit.cover,
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
