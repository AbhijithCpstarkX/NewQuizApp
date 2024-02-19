import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeApp(),)) ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "data:image/png;base64,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"),
              radius: 70,
            ),
           Text("Pinterest",style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
