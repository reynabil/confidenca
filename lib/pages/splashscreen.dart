import 'dart:async';

import 'package:confidenca/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:confidenca/pages/login.dart';
import 'package:confidenca/pages/register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  // void iniState() {
  //   super.initState();
  //   Timer(Duration(seconds: 2), () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (_) => Login(),
  //       ),
  //     );
  //   });
  // }
  


  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) =>Login()),
            ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: 200,
            height: 200,
          ),
          Text("Confidenca",
          style: TextStyle(fontSize: 24.0 ,fontWeight: FontWeight.bold),)
        ],
      )),
    );
  }
}
