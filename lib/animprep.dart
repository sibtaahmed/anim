import 'package:anim/heroanimation.dart';
import 'package:flutter/material.dart';

class animprep extends StatefulWidget {
  const animprep({super.key});
  @override
  State<animprep> createState() => _animprepState();
}

class _animprepState extends State<animprep> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Color bgcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animations',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const myhero(),
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
            AnimatedContainer(
              width: _width,
              height: _height,
              color: bgcolor,
              duration: const Duration(seconds: 2),
            ),
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width = 100.0;
                        _height = 200.0;
                        flag = false;
                        bgcolor = Colors.amber;
                      } else {
                        _width = 200.0;
                        _height = 100.0;
                        flag = true;
                        bgcolor = Colors.black;
                      }
                    });
                  },
                  child: const Text('start')),
            )
          ],
        ),
      ),
    );
  }
}
