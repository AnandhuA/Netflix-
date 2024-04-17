import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/api/urls.dart';
import 'package:netflix/presentationn/widgets/title_text_widget.dart';

class MainTitleCardWidget extends StatelessWidget {
  final String titleText;
  final List<String> imageList;
  const MainTitleCardWidget({super.key, required this.titleText,required this.imageList});

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
            children: List.generate(imageList.length, (index) {
              return Container(
                margin: const EdgeInsets.all(10),
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("$imageUrl${imageList[index]}"),
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
