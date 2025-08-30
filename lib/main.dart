import 'package:flutter/material.dart';
import 'package:my_pet_app/Onboarding.dart';
import 'package:my_pet_app/home.dart';
import 'package:my_pet_app/login.dart';
import 'package:my_pet_app/signup.dart';
import 'package:my_pet_app/splash.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vet Track",
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
