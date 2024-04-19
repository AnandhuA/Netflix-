import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix/api/functions/functions.dart';

import 'package:netflix/presentationn/main_page/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToMainScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/animations/netflix.json",
          width: 200,
          repeat: false,
        ),
      ),
    );
  }

  goToMainScreen() async {
   await getUpcoming();
    await getTrending();
    await getDownloads();
    await getReleasedPastYear();
    await getTenesDramas();
    await getSouthCinemas();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MainPage(),
      ),
    );
  }
}
