import 'package:flutter/material.dart';
import 'package:screen_intro/screen/home_page.dart';
import 'package:screen_intro/screen/intro%201.dart';
import 'package:screen_intro/screen/intro%202.dart';
import 'package:screen_intro/screen/intro%203.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  bool isSplashScreenVisited = prefs.getBool("isSplashScreenVisited") ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'intro1': (context) => intro1(),
        'intro2': (context) => intro2(),
        'intro3': (context) => intro3(),
      },
      initialRoute: (isSplashScreenVisited == true)
          ? '/'
          : 'intro1',
    ),
  );
}
