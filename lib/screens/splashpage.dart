import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laundryta/screens/home.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "LaundryTa'",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Calibri, sans-serif',
                  fontSize: 24,
                  color: Colors.black),
            ),
            SizedBox(height: 25.54),
            SizedBox(
              height: 20,
              child: LoadingIndicator(
                indicatorType: Indicator.circleStrokeSpin,
                colors: [Colors.white],
                backgroundColor: Colors.white,
                pathBackgroundColor: Colors.black,
                strokeWidth: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
