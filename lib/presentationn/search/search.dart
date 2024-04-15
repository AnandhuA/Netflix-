import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/search/widgets/search_idle.dart';
import 'package:netflix/presentationn/search/widgets/search_result.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CupertinoSearchTextField(
                onChanged: (value) {
                  setState(() {
                    onChange = true;
                  });
                },
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              kHeight,
              Expanded(
                child: onChange ? const SearchResultWidget() : const SearchIdleWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
