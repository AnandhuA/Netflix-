import 'package:flutter/material.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/search/widgets/search_result_iteams.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Movies & T V shows"),
        kHeight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
            children: List.generate(
              20,
              (index) => const SearchResultIteam(),
            ),
          ),
        )
      ],
    );
  }
}
