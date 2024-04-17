import 'package:flutter/material.dart';
import 'package:netflix/presentationn/widgets/app_bar_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "New & Hot",
        ),
      ),
      body: Center(
        child: Text("NewAndHotScreen"),
      ),
    );
  }
}


