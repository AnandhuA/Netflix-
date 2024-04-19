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
