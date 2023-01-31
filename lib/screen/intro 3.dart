import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro3 extends StatefulWidget {
  const intro3({Key? key}) : super(key: key);

  @override
  _intro3State createState() => _intro3State();
}

class _intro3State extends State<intro3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool("isSplashScreenVisited", true);
          Navigator.pushReplacementNamed(context, "/");
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/3.JPG"),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool("isSplashScreenVisited", true);
                        setState(() {});
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
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool("isSplashScreenVisited", true);
                        Navigator.pushReplacementNamed(context, "/");
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.redAccent),
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
