// import 'package:anim/form.dart';
// import 'package:anim/mapping.dart';
// import 'package:anim/prefs.dart';
import 'package:anim/sharedpref.dart';
import 'package:flutter/material.dart';

class clip extends StatefulWidget {
  const clip({super.key});

  @override
  State<clip> createState() => _clipState();
}

class _clipState extends State<clip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CLIP RRECT....',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Sharedprefs(),
                    ));
              },
              icon: const Icon(
                Icons.arrow_right,
                color: Colors.white70,
                size: 40,
              ))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfff6d365),
              Color(0xfffda085),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Stack(
          children: [
            Center(
              child: Text(
                ' Gradient!',
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
          ],
        ),
      ),
    );
  }
}
