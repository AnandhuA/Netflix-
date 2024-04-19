import 'package:flutter/material.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/api/urls.dart';

class SearchResultIteam extends StatelessWidget {
  final int index;
  const SearchResultIteam({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage("$imageUrl${searchItames[index]}"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
