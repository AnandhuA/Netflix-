import 'package:flutter/material.dart';
import 'package:netflix/api/functions/functions.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/sizes.dart';
import 'package:netflix/presentationn/new_&_hot/widgets/coming_soon.dart';
import 'package:netflix/presentationn/new_&_hot/widgets/everyones_watching.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("New & Hot"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                color: colorWhite,
                size: 30,
              ),
            ),
            kWidth,
            Container(
              width: 25,
              height: 25,
              color: Colors.blue,
            ),
            kWidth
          ],
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: colorBlack,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            dividerColor: colorBlack,
            unselectedLabelColor: colorWhite,
            tabs: const [
              Tab(
                text: "🍿 Coming Soon",
              ),
              Tab(
                text: "👀 Everyone's Watching",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            comingSoon.isEmpty
                ? const Center(child: Text("No Datas"))
                : const CommingSoonWidget(),
            comingSoon.isEmpty
                ? const Center(child: Text("No Datas"))
                : const EveryoneWatchingWidget(),
          ],
        ),
      ),
    );
  }
}
