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
    Timer(Duration(seconds: 2), () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeApp(),)) ;
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
                  "https://img.poki.com/cdn-cgi/image/quality=78,width=600,height=600,fit=cover,f=auto/e689238d6dcbb672b749ab65960c0d65.png"),
              radius: 70,
            ),
           SizedBox(
             height: 30,
           ),
           Text("Quiz Time",style: TextStyle(fontSize: 30,color: Colors.black),)
          ],
        ),
      ),
    );
  }
}
