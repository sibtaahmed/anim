import 'dart:async';
import 'package:anim/animatedCrossfade.dart';
import 'package:anim/onboardingscreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class splassh extends StatefulWidget {
  const splassh({super.key});

  @override
  State<splassh> createState() => _splasshState();
}

class _splasshState extends State<splassh> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const boarding(),
          ));
    });
  }

  void navigateToSignIn() {
    // Navigate to the sign-in screen. Replace 'SignInScreen()' with your actual sign-in screen widget.
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const boarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // Wrap the entire Column in a Center widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/undraw_welcome.png',
              width: 200,
              height: 200,
            ),
            AnimatedTextKit(
              repeatForever: false,
              totalRepeatCount: 2,
              animatedTexts: [
                TypewriterAnimatedText(
                  "Welcome to My App",
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              onTap: () {},
              onFinished: navigateToSignIn, // Navigate after text animation
            ),
          ],
        ),
      ),
    );
  }
}
