import 'package:anim/form.dart';
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
      backgroundColor: const Color.fromARGB(255, 52, 50, 50),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'ChatGPT Prep',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const formprep(),
                    ));
              },
              icon: const Icon(
                Icons.arrow_right,
                color: Colors.white70,
                size: 40,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              // Push the cards to the center of the screen
              const Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconTextCard(
                          icon: Icons.star,
                          iconColor: Colors.red,
                          text: 'Flutter development is fun!',
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
                      children: [
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
              // Pushes the text field and button to the bottom
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  decoration: InputDecoration(
                    label: const Text(
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
                    prefixIcon: const Icon(
                      Icons.attach_file,
                      color: Colors.white,
                    ),
                    suffixIcon: const Icon(
                      Icons.upload_file_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('SUBMIT'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconTextCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  const CustomIconTextCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.text,
  });

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
            const SizedBox(height: 8),
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
