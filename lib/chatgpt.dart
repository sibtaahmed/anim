import 'package:flutter/material.dart';

class Chatgpt extends StatefulWidget {
  const Chatgpt({super.key});

  @override
  State<Chatgpt> createState() => _ChatgptState();
}

class _ChatgptState extends State<Chatgpt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 52, 50, 50),
      appBar: AppBar(
        title: Center(
          child: Text(
            'ChatGPT Prep',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Spacer(), // Push the cards to the center of the screen
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomIconTextCard(
                      icon: Icons.star,
                      iconColor: Colors.red,
                      text: 'Mr Hammad is my Favorite mentor',
                    ),
                    SizedBox(width: 20),
                    CustomIconTextCard(
                      icon: Icons.star,
                      iconColor: Colors.green,
                      text: 'Flutter development is fun!',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomIconTextCard(
                      icon: Icons.star,
                      iconColor: Colors.yellow,
                      text: 'Flutter development is fun!',
                    ),
                    SizedBox(width: 20),
                    CustomIconTextCard(
                      icon: Icons.star,
                      iconColor: Colors.blue,
                      text: 'Flutter development is fun!',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(), // Pushes the text field and button to the bottom
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                label: Text(
                  'Message ChatGPT',
                  style: TextStyle(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 225, 228, 231),
                    width: 1.0,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.attach_file,
                  color: Colors.white,
                ),
                suffixIcon: Icon(
                  Icons.upload_file_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40, top: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('SUBMIT'),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomIconTextCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  const CustomIconTextCard({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.blue,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 30,
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
