import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro1 extends StatefulWidget {
  const intro1({Key? key}) : super(key: key);

  @override
  _intro1State createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, "intro2");
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/1.JPG"),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool("isSplashScreenVisited", true);
                        Navigator.pushReplacementNamed(context, "/");
                      },
                      child: Text(
                        "Skip",
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.redAccent[100],
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.redAccent[100],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "intro2");
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
