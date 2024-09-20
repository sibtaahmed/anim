import 'package:anim/clipRRect.dart';
import 'package:flutter/material.dart';

class Wheel extends StatefulWidget {
  const Wheel({super.key});

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  // Array to store image asset paths or network URLs
  var imagePaths = [
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
    'assets/DP.jpg', // Example asset image
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hero Detailed page',
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
                      builder: (context) => const clip(),
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
        child: ListWheelScrollView(
          itemExtent: 300,
          children: imagePaths
              .map((path) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(21),
                      child: Image.asset(
                        path,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 300,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
