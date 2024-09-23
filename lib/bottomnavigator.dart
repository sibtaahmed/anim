import 'package:anim/screens/screen1.dart';
import 'package:anim/screens/screen2.dart';
import 'package:anim/screens/screen3.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  // List of screens to switch between
  final List<Widget> body = const [
    screen1(),
    screen2(),
    screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[
          _currentIndex], // Displaying current screen based on _currentIndex
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Tracks the selected tab
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Updates the index when a tab is tapped
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedHome10,
              color: Colors.green,
              size: 24.0,
            ),
            label: 'Home',
            activeIcon: HugeIcon(
              icon: HugeIcons.strokeRoundedHome01,
              color: Colors.green,
              size: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedMenu01,
              color: Colors.green,
              size: 24.0,
            ),
            label: 'Menu',
            activeIcon: HugeIcon(
              icon: HugeIcons.strokeRoundedMenu02,
              color: Colors.green,
              size: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedProfile,
              color: Colors.green,
              size: 24.0,
            ),
            label: 'Profile',
            activeIcon: HugeIcon(
              icon: HugeIcons.strokeRoundedProfile02,
              color: Colors.green,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
