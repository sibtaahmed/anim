// import 'dart:async';

// import 'package:anim/animatedOpacity.dart';
import 'package:anim/animatedOpacity.dart';
// import 'package:anim/onboardingscreen.dart';
import 'package:flutter/material.dart';

class crossfade extends StatefulWidget {
  const crossfade({super.key});

  @override
  State<crossfade> createState() => _crossfadeState();
}

class _crossfadeState extends State<crossfade> {
  bool isfirst = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(Duration(seconds: 4),(){
    //   reload();
    // });
  }

  void reload() {
    setState(() {
      if (isfirst) {
        isfirst = false;
      } else {
        isfirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'CROSSFADE ANIMATION',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const opacity(),
                      ));
                },
                icon: const Icon(
                  Icons.arrow_right,
                  color: Colors.white70,
                  size: 40,
                ))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: const Duration(seconds: 2),
                firstChild: const SizedBox(
                  width: 200,
                  height: 200,
                  // color: const Color.fromARGB(255, 211, 219, 223),
                ),
                secondChild: Image.asset('assets/DP.jpg'),
                crossFadeState: isfirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              ElevatedButton(
                  onPressed: () {
                    reload();
                  },
                  child: const Text('lets Do'))
            ],
          ),
        ));
  }
}
