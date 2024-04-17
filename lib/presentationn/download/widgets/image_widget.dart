import 'package:flutter/material.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/api/urls.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      required this.size,
      required this.index,
      this.rotateion = 0,
      required this.margin});

  final Size size;
  final int index;
  final double rotateion;
  final EdgeInsets margin;

  // final imageList = [
  //   "https://image.tmdb.org/t/p/w600_and_h900_bestv2/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg",
  //   "https://image.tmdb.org/t/p/w600_and_h900_bestv2/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
  //   "https://image.tmdb.org/t/p/w600_and_h900_bestv2/j91LJmcWo16CArFOoapsz84bwxb.jpg",
  // ];

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotateion,
      child: Container(
        margin: margin,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage("$imageUrl${downloadsImageUrls[index]}"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
