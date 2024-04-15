import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

const imageUrl =
    "https://media.themoviedb.org/t/p/w533_and_h300_bestv2/kaIfm5ryEOwYg8mLbq8HkPuM1Fo.jpg";

class TopSearchIteamTile extends StatelessWidget {
  const TopSearchIteamTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Image.network(
          imageUrl,
          width: size.width * 0.4,
          height: 70,
        ),
        const Expanded(
          child:  Text(
            "Movie Name",
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
