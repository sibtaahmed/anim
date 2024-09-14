// import 'package:anim/animatedCrossfade.dart';
// import 'package:anim/animatedCrossfade.dart';
// import 'package:anim/clipRRect.dart';
// import 'package:anim/mapping.dart';
// import 'package:anim/chatgpt.dart';
import 'package:anim/form.dart';
// import 'package:anim/prefs.dart';
// import 'package:anim/sharedpref.dart';
// import 'package:anim/sharedpref.dart';
// import 'package:anim/heroanimation.dart';
// import 'package:anim/listwheel.dart';
// import 'package:anim/animatedOpacity.dart';
// import 'package:anim/animprep.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}
SharedPreferences? prefs;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 68, 183, 58)),
        useMaterial3: true,
      ),
      // home: crossfade(),
      home: const formprep(),
      
    );
  }
}

