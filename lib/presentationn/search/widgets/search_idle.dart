import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/search/widgets/top_search_iteam_tile.dart';
import 'package:netflix/presentationn/widgets/title_text_widget.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleTextWidget(title: "Top Searches"),
        kHeight,
        terndingModels.isEmpty
            ? const Center(child: Text("No Data"))
            : Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return TopSearchIteamTile(
                      index: index,
                    );
                  },
                  separatorBuilder: (context, index) => kHeight20,
                  itemCount: terndingModels.length,
                ),
              ),
      ],
    );
  }
}
