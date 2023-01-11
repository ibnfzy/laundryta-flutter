import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laundryta/screens/home.dart';
import 'package:laundryta/static/static_values.dart';
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
      backgroundColor: StaticValue.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/laundryta-logo.png',
              width: 228,
              height: 300,
            ),
            const SizedBox(
              height: 50,
              child: LoadingIndicator(
                indicatorType: Indicator.circleStrokeSpin,
                colors: [StaticValue.primaryColor],
                backgroundColor: StaticValue.primaryColor,
                pathBackgroundColor: Colors.white,
                strokeWidth: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
