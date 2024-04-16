import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomButtonWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: colorWhite,
          size: 30,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
