import 'package:flutter/material.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/sizes.dart';

class TopSearchIteamTile extends StatelessWidget {
  final int index;
  const TopSearchIteamTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(
            terndingModels[index].banner,
            width: size.width * 0.35,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            terndingModels[index].title,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_circle_filled_outlined,
              color: colorWhite,
              size: 30,
            ))
      ],
    );
  }
}
