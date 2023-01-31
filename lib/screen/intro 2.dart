import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro2 extends StatefulWidget {
  const intro2({Key? key}) : super(key: key);

  @override
  _intro2State createState() => _intro2State();
}

class _intro2State extends State<intro2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, "intro3");
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/2.jpg"),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 20,
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
                        Navigator.pushReplacementNamed(context, "intro3");
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
