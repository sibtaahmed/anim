import 'package:anim/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class prefsprep extends StatefulWidget {
  const prefsprep({super.key});

  @override
  State<prefsprep> createState() => _prefsprepState();
}

class _prefsprepState extends State<prefsprep> {
  var nameController = TextEditingController();
  var getName;
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practice',
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
                Center(
                    child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text('user'),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 54, 146, 244),
                        width: 3.0,
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () async {
               name = nameController.text.toString();
                  prefs = await SharedPreferences.getInstance();
                  await prefs?.setString('N','$name');
                }, child: Text("SAVE")),

                ElevatedButton(onPressed: () async {
                  prefs = await SharedPreferences.getInstance();
                 getName =  prefs?.getString('N');
                 print(getName);
                }, child: Text("GET")),
                ElevatedButton(onPressed: () async {
                 setState(() {
                  // prefs?.clear();
                 nameController.clear();
                 print(nameController.text);
                   
                 });
                }, child: Text("CLEAR")),
                 Text("$getName"),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}
