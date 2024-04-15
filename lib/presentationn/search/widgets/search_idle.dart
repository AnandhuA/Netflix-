import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/search/widgets/top_search_iteam_tile.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Searches",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const TopSearchIteamTile();
            },
            separatorBuilder: (context, index) => kHeight20,
            itemCount: 8,
          ),
        ),
      ],
    );
  }
}
