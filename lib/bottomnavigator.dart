import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({super.key});

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  int _currentIndex = 0;
  List body = [
    const Text('HOME'),
    const Text('MENU'),
    const Text('DP'),
    // const Icon(Icons.home),
    // const Icon(Icons.menu),
    // const Icon(Icons.person),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
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
