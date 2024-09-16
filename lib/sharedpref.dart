import 'package:anim/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedprefs extends StatefulWidget {
  const Sharedprefs({super.key});

  @override
  State<Sharedprefs> createState() => _SharedprefsState();
}

class _SharedprefsState extends State<Sharedprefs> {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SHARED PREFERENCES...',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Center(
            child: SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      label: const Text('user'),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: Colors.red)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 54, 146, 244),
                          width: 3.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 11),
                  ElevatedButton(
                      onPressed: () async {
                        name = nameController.text.toString();
                        prefs = await SharedPreferences.getInstance();
                        await prefs?.setString("N", "$name");
                      },
                      child: const Text('Save')),
                  ElevatedButton(
                      onPressed: () async {
                        prefs = await SharedPreferences.getInstance();
                        getName = prefs?.getString("N");
                        print(getName);
                        setState(() {});
                      },
                      child: const Text('Get')),
                  ElevatedButton(
                      onPressed: () async {
                        await prefs!.clear();
                        setState(() {});
                      },
                      child: const Text('Clear')),
                  Text("$getName"),
                ],
              ),
            ),
          ),
        ));
  }

  var getName;
  var name;
}
