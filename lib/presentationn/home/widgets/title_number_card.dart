import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentationn/search/widgets/search_result_iteams.dart';
import 'package:netflix/presentationn/widgets/title_text_widget.dart';

class TitleNumberCard extends StatelessWidget {
  final String titleText;
  const TitleNumberCard({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleTextWidget(
          title: titleText,
        ),
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              6,
              (index) {
                return Stack(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          height: 150,
                          width: 40,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 150,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(url),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: BorderedText(
                        strokeWidth: 5.0,
                        strokeColor: textWhite,
                        child: Text(
                          "${index + 1}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 150,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
