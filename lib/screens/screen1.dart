import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/undraw4.png'),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Screen 1',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'We need to work hard,We need to work hard,We need to work hard,We need to work hard,We need to work hard,We need to work hard',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
