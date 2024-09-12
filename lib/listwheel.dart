import 'package:anim/clipRRect.dart';
import 'package:flutter/material.dart';

class Wheel extends StatefulWidget {
  const Wheel({super.key});

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  var arrIndex = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => clip(),));
                },
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.white70,
                size: 40,
                ))
          ],
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex.map((value) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
              color: Colors.blue,
              ),
              width: double.infinity,
              alignment: Alignment.center,
            ),
          )).toList(),
        ),
      ),
    );
  }
}
