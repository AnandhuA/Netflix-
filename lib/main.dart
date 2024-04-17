import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentationn/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundBlack,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: textWhite),
          bodySmall: TextStyle(color: textWhite),
          bodyMedium: TextStyle(color: textWhite),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}


