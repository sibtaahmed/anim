import 'package:anim/animprep.dart';
import 'package:flutter/material.dart';

class opacity extends StatefulWidget {
  const opacity({super.key});

  @override
  State<opacity> createState() => _opacityState();
}

class _opacityState extends State<opacity> {
  var myOpacity = 1.0;
  bool isVisible= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ANIMATION OPACITY',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const animprep(),));
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
            AnimatedOpacity(
              opacity: myOpacity,
              duration: const Duration(seconds: 1),
              curve: Curves.slowMiddle,
              child: Container(
                 width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 240, 14, 14),
                // shape: BoxShape.circle,
                ),
               
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedOpacity(
                opacity: myOpacity,
                duration: const Duration(seconds: 1),
                curve: Curves.slowMiddle,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 29, 185, 29),
                  // shape: BoxShape.circle,
                  ),
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: myOpacity,
              duration: const Duration(seconds: 1),
              curve: Curves.slowMiddle,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 222, 243, 29),
                ),
                width: 100,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: ElevatedButton(onPressed: (){
                myOpacity = 0.0;
                setState(() {
                  if(isVisible){
                    myOpacity=0.0;
                    isVisible =false;
                  }else{
                     myOpacity=1.0;
                    isVisible= true;
                  }
                });
              }, child: const Text('GO')),
            )
          ],
        ),
      ),
    );
  }
}
