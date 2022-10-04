import 'package:flutter/material.dart';
import 'package:fluttercookie/login.dart';
import 'package:fluttercookie/lost_found.dart';
import 'package:fluttercookie/page/profile_page.dart';
import 'package:fluttercookie/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

