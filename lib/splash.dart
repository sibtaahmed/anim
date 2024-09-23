import 'dart:async';

import 'package:anim/animatedCrossfade.dart';
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
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const crossfade(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Dp.jpg',
            width: 150,
            height: 150,
          ),
          TypeWriter.text(
            'Welcome to my App........',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            duration: const Duration(milliseconds: 80),
          ),
        ],
      ),
    );
  }
}
