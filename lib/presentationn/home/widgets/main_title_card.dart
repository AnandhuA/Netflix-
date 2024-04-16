import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/presentationn/search/widgets/search_result_iteams.dart';
import 'package:netflix/presentationn/widgets/title_text_widget.dart';

class MainTitleCardWidget extends StatelessWidget {
  final String titleText;
  const MainTitleCardWidget({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleTextWidget(
          title: titleText,
        ),
        LimitedBox(
          maxHeight: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) {
              return Container(
                margin: const EdgeInsets.all(10),
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
