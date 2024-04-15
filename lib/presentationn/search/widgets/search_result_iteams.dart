import 'package:flutter/material.dart';

const url =
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg";

class SearchResultIteam extends StatelessWidget {
  const SearchResultIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
