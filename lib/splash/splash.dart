import 'dart:async';
import 'package:directmart/mainnavigator/mainnavigator.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late final Timer RunSplash;
  Timer getTimer() {
    return Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainNavigator(),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    RunSplash = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    RunSplash.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('assets/DirectMart.png'),
          width: 100,
        ),
      ),
    );
  }
}
