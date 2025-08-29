import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome Jane,",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xff2E8C84),
                    backgroundImage: AssetImage("assets/images/person1_bg.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xffA8E3DC), Color(0xffFFB899)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Catherine ",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                            color: Color(0xff1F5B56),
                          ),
                        ),
                        Text(
                          "has an ",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: Color(0xff1F5B56),
                          ),
                        ),
                        Text(
                          "appointment today",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: Color(0xff1F5B56),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff1F5B56),
                            borderRadius: BorderRadius.circular(30),
                            // border: Border.all(color: Color(0xff1F5B56)),
                          ),
                          child: Center(
                            child: Text(
                              "See More",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 18,
                                color: Color(0xffFFFFFF),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      "assets/images/pet.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1), // soft shadow
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(0, 3), // moves shadow slightly down
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEFF0F6),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14,
                  ), // vertical alignment
                  border: InputBorder.none, // removes underline
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff1F5B56),
                    letterSpacing: 1,
                  ),
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Color(0xff1F5B56),
                  ),
                  suffixIcon: Icon(Icons.clear, color: Color(0xff1F5B56)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(2, 2),
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Color(0xff1F5B56),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.water_drop,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Oestrus",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1F5B56),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(2, 2),
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Color(0xff1F5B56),
                          ),
                          child: Center(
                            child: Icon(
                              IconsaxPlusBold.hospital,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Hospitals",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1F5B56),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(2, 2),
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Color(0xff1F5B56),
                          ),
                          child: Center(
                            child: Icon(
                              IconsaxPlusBold.receipt_2_1,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Schedule",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1F5B56),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 72,
                          height: 72,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(2, 2),
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: Color(0xffFFB889),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.medical_services_rounded,
                              color: Color(0xff1F5B56),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Doctors",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1F5B56),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: Text(
                "Doctor Near You",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(2, 2),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xffEFF0F6), Color(0xffEFF0F6)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffFFB889),
                        backgroundImage: AssetImage(
                          "assets/images/doctor2.png",
                        ),
                        radius: 60,
                      ),

                      Container(
                        height: 120,
                        width: 2,
                        color: Color(0xff1F5B56),
                      ),
                      Container(
                        child: Column(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Whitney Glass",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Inter",
                                color: Color(0xff1F5B56),
                              ),
                            ),
                            Text(
                              "Reproductive Specialist",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Inter",
                                color: Color(0xff1F5B56),
                              ),
                            ),
                            Text(
                              "Distance: 1.2 miles",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Inter",
                                color: Color(0xff1F5B56),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Rating: 4",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Inter",
                                      color: Color(0xff1F5B56),
                                    ),
                                  ),
                                  Icon(Icons.star, color: Color(0xff1F5B56)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
