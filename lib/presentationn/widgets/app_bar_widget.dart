import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/sizes.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          kWidth,
          Text(
            "Downloads",
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
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
    );
  }
}
