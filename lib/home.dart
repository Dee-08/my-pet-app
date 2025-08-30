import 'package:flutter/material.dart';
import 'package:my_pet_app/addScreen.dart';
import 'package:my_pet_app/homeScreen.dart';
import 'package:my_pet_app/journalScreen.dart';
import 'package:my_pet_app/profileScreen.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    Journalscreen(),
    AddScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffE45A2A),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 204, 203, 203),
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.home_1),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.note_1),
            label: "Journal",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.add_square),
            label: "Add Pet",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.profile),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
