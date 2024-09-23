// import 'package:anim/animatedCrossfade.dart';
// import 'package:anim/animatedCrossfade.dart';
// import 'package:anim/clipRRect.dart';
// import 'package:anim/mapping.dart';
// import 'package:anim/chatgpt.dart';
// import 'package:anim/bottomnavigator.dart';
import 'package:anim/bottomnavigator.dart';
import 'package:anim/onboardingscreen.dart';
// import 'package:anim/bottomprep.dart';
// import 'package:anim/form.dart';
// import 'package:anim/onboardingscreen.dart';
// import 'package:anim/splash.dart';
// import 'package:anim/tabbar.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:anim/prefs.dart';
// import 'package:anim/sharedpref.dart';
// import 'package:anim/sharedpref.dart';
// import 'package:anim/heroanimation.dart';
// import 'package:anim/listwheel.dart';
// import 'package:anim/animatedOpacity.dart';
// import 'package:anim/animprep.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// void main() => runApp(
//       DevicePreview(
//         builder: (context) => const MyApp(), // Wrap your app
//       ),
//     );

void main() => runApp(
      const MyApp(), // Wrap your app
    );

SharedPreferences? prefs;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //       seedColor: const Color.fromARGB(255, 68, 183, 58)),
      //   useMaterial3: true,
      // ),
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 103, 204, 143)),
        iconTheme: const IconThemeData(size: 36.0, color: Colors.black87),
        textTheme: const TextTheme(
          bodyMedium:
              TextStyle(fontSize: 16.0, color: Color.fromARGB(221, 15, 15, 15)),
        ),
      ),
      // home: crossfade(),
      home: const boarding(),
    );
  }
}
