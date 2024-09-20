import 'package:anim/form.dart';
import 'package:anim/login.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> body = [
    // const Icon(Icons.home),
    // const Icon(Icons.menu),
    // const Icon(Icons.person),
    // const Icon(Icons.message),
    const formprep(),
    const Loginpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 227, 175, 97),
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'SignUP'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Login'),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          // BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        ],
      ),
    );
  }
}
