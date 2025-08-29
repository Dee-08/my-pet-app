import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Image.asset(
            "assets/images/logo_bg.png",
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}
