import 'package:flutter/material.dart';
import 'package:netflix/presentationn/download/download.dart';
import 'package:netflix/presentationn/fast_laughs/fast_laughs.dart';
import 'package:netflix/presentationn/home/home_screen.dart';
import 'package:netflix/presentationn/main_page/widgets/bottom_navigation.dart';
import 'package:netflix/presentationn/new_&_hot/new_and_hot.dart';
import 'package:netflix/presentationn/search/search.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _pages = [
    const HomeScreen(),
    const NewAndHotScreen(),
    const FastLaughsScreen(),
    const SearchScreen(),
    const DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexNotifier,
        builder: (context, value, child) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
