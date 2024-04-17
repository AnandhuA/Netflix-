import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/sizes.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 100),
      width: double.infinity,
      child: Container(
        height: 100,
        color: Colors.black.withOpacity(0.3),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/toppng.com-netflix-logo-png-hd-428x224.png",
                  width: 70,
                  height: 50,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cast,
                    color: colorWhite,
                    size: 30,
                  ),
                ),
                kWidth,
                Container(
                  width: 25,
                  height: 25,
                  color: Colors.blue,
                ),
                kWidth
              ],
            ),
            kHeight,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Tv Shows",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Movies",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
