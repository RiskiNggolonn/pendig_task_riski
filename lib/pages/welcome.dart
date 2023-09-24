import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(right: 50, bottom: 30),
            child: Text(
              "Welcome To Home",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
            ),
          ),
          Image.asset("lib/image/welcome1.png"),
          const Text(
            "Currently The Next Part of Home Activity & Fragementation is under development. The upcoming Part 2 is coming Soon........",
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    ));
  }
}
