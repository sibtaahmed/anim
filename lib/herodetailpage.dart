import 'package:anim/listwheel.dart';
import 'package:flutter/material.dart';

class nextpage extends StatefulWidget {
  const nextpage({super.key});

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Detailed page',style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
       backgroundColor: Colors.blue, 
         actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Wheel(),));
                },
                icon: const Icon(
                  Icons.arrow_right,
                  color: Colors.white70,
                size: 40,
                ))
          ],      
      ),
       body: Container(
        child: Hero(
          tag: "bg",
          child: Image.asset('assets/DP.jpg'),
        ),
      ),
    );
  }
}