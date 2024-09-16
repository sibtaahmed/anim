import 'package:anim/login.dart';
import 'package:flutter/material.dart';

class formprep extends StatefulWidget {
  const formprep({super.key});

  @override
  State<formprep> createState() => _formprepState();
}

class _formprepState extends State<formprep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Center(
      //       child: Text(
      //     'SignUp/Login',
      //     style: TextStyle(color: Colors.white),
      //   )),
      //   backgroundColor: Colors.black,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
              const Text(
                'Create Account',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                  label: const Text(
                    'Username',
                    style: TextStyle(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 21, 21, 21))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 21, 21, 22),
                      width: 1.0,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.person_2_rounded,
                    color: Color.fromARGB(255, 13, 13, 13),
                  ),
                  // suffixIcon: Icon(
                  //   Icons.upload_file_rounded,
                  //   color: Colors.white,
                  // ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              TextField(
                decoration: InputDecoration(
                  label: const Text(
                    'Gmail',
                    style: TextStyle(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 21, 21, 21))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 21, 21, 22),
                      width: 1.0,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Color.fromARGB(255, 13, 13, 13),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  label: const Text(
                    'Password',
                    style: TextStyle(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 21, 21, 21))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 21, 21, 22),
                      width: 1.0,
                    ),
                  ),
                  suffixIcon: const Icon(
                    Icons.visibility_off,
                    color: Color.fromARGB(255, 13, 13, 13),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 13, 13, 13),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Creating an account means you are satisfied with our services and our privacy policy',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // const SizedBox(
              //   width: double.infinity,
              // ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Change background color
                      foregroundColor:
                          Colors.white, // Change text (foreground) color
                      shadowColor: Colors.black, // Change shadow color
                      elevation: 5, // Elevation
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text('Sign Up')),
              )),
              const SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an Account?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Loginpage()));
                      },
                      child: const Text('LogIn'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
