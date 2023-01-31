import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'intro 1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool("isSplashScreenVisited", false);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return intro1();
            }));
          },
          child: Text(
            "Home Page",
          ),
        ),
      ),
    );
  }
}
