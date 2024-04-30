import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp/pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HommePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(
        'assets/images/whatsapp-message-icon-png-favpng-Vd6iz8s4rRB3jQKReCwPyD2Hq.png',
        width: 200,
        height: 200,
      ),
    ));
  }
}
