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
      appBar: AppBar(
        title: Text('ChatGPT Prep'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Mr Hammad is my Favorite mentor',
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
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
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Mr Hammad is my Favorite mentor',
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),           
              ],0
            ),
          ],
        ),
      ),
    );
  }
}
