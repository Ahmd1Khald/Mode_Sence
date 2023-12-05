import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sensor/Core/constance/assets_manager.dart';
import 'package:sensor/Features/home/presentation/views/home_screen.dart';

import '../../../../Core/constance/my_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    // Add a delay and navigate to the next screen
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const HomeScreen()), // Replace NextScreen with the actual next screen widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBackGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    'Mode Sence',
                    textStyle: GoogleFonts.anton(
                      color: MyColors.creamColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  color: MyColors.creamColor,
                ),
                child: Center(
                  child: Text(
                    'Be your own therapist',
                    style: GoogleFonts.acme(
                      color: MyColors.darkBlueColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // AnimatedSplashScreen(
              //   splash: AssetsManager.backgroundImage,
              //   nextScreen: HomeScreen(),
              //   splashTransition: SplashTransition.rotationTransition,
              // ),
              Image.asset(
                AssetsManager.backgroundImage,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.width * 0.8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
