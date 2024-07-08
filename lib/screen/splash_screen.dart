import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_localization/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Start a timer that navigates to the home screen after 2 seconds
    Timer(
      const Duration(seconds: 1),
          () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomeScreen(), // Replace HomeScreen with your actual home screen widget
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.only(top: 0),
      decoration: const BoxDecoration(

      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
