import 'package:f/homepage.dart';
import 'package:f/onboarding.dart';
import 'package:f/permision.dart';
import 'package:f/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Permision(),
      },
      //Search
    );
  }
}
