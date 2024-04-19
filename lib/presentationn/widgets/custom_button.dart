import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final double iconSize;
  final double titleSize;
  const CustomButtonWidget(
      {super.key, required this.icon, required this.title,this.iconSize=30,this.titleSize=20,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: colorWhite,
          size: iconSize,
        ),
        Text(
          title,
          style:  TextStyle(fontSize: titleSize),
        )
      ],
    );
  }
}
