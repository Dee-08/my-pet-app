import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_pet_app/Onboarding.dart';
import 'package:my_pet_app/config/appwrite.dart';
import 'package:my_pet_app/home.dart';
import 'package:my_pet_app/signup.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () async {
      final storage = FlutterSecureStorage();
      try {
        var user = await AppwriteConfig.account.get();

        if (!await storage.containsKey(key: "userId")) {
          await storage.write(key: "userId", value: user.$id);
        }
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      } catch (e) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Onboarding()),
        );
      }
    });

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffA8E3DC), Color(0xffFFB899)],
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/logo_bg.png",
            height: 320,
            width: 320,
          ),
        ),
      ),
    );
  }
}
