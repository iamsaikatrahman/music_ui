import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Daily",
                      style: TextStyle(
                        color: Color(0xFFF09D15),
                        fontSize: 60,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(1, 2),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                    TextSpan(
                      text: " PodCast",
                      style: TextStyle(
                        color: Color(0xFF60A2BC),
                        fontSize: 60,
                        letterSpacing: 1.5,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(1, 2),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("asset/onboarding.png"),
            Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.7,
              decoration: BoxDecoration(
                color: Color(0xFFF09D15),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  Get.toNamed("/home");
                },
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
