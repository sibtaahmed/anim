import 'dart:async';

import 'package:anim/animatedCrossfade.dart';
import 'package:flutter/material.dart';

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
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.amber,
    );
  }
}
