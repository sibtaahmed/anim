import 'package:anim/herodetailpage.dart';
import 'package:flutter/material.dart';

class myhero extends StatefulWidget {
  const myhero({super.key});

  @override
  State<myhero> createState() => _myheroState();
}

class _myheroState extends State<myhero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HERO ANIMATION',style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: Colors.blue,
         actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const nextpage(),));
                },
                icon: const Icon(
                  Icons.arrow_right,
                  color: Colors.white70,
                size: 40,
                ))
          ],
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const nextpage(),));
            },
            child: Hero(
              tag: "bg",
              child: Image.asset('assets/DP.jpg', width: 100,height: 100,),
            ),
          ),
        ),
      ),
    );
  }
}