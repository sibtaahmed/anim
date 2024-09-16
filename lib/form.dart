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
      backgroundColor: const Color.fromARGB(255, 246, 245, 241),
      appBar: AppBar(
        title: const Center(child: Text('SignUp/Login',style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.blue,
      ),
      body:
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 30),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
          
             const Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
             const Text('Create Account',style: TextStyle( fontSize: 25),),
             const SizedBox(height: 10,),
              TextField( decoration: InputDecoration(
               label: const Text(
                 'Username',
                 style: TextStyle(color: Colors.grey),
               ),
               enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25),
                   borderSide: const BorderSide(color: Color.fromARGB(255, 21, 21, 21))),
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
                         ),),
              const SizedBox(height: 11,),
              TextField( decoration: InputDecoration(
               label: const Text(
                 'gmail',
                 style: TextStyle(color: Colors.grey),
               ),
               enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25),
                   borderSide: const BorderSide(color: Color.fromARGB(255, 21, 21, 21))),
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
               // suffixIcon: Icon(
               //   Icons.upload_file_rounded,
               //   color: Colors.white,
               // ),
                         ),),
              const SizedBox(height: 15,),
              TextField( decoration: InputDecoration(
               label: const Text(
                 'Password',
                 style: TextStyle(color: Colors.grey),
               ),
               enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(25),
                   borderSide: const BorderSide(color: Color.fromARGB(255, 21, 21, 21))),
               focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(25),
                 borderSide: const BorderSide(
                   color: Color.fromARGB(255, 21, 21, 22),
                   width: 1.0,
                 ),
               ),
               prefixIcon: const Icon(
                 Icons.lock,
                 color: Color.fromARGB(255, 13, 13, 13),
               ),
               // suffixIcon: Icon(
               //   Icons.upload_file_rounded,
               //   color: Colors.white,
               // ),
                         ),),
                         const Padding(
                           padding: EdgeInsets.all(20.0),
                           child: Text('Creating an account means you are satisfied with our services and our privacy policy',style: TextStyle(color: Colors.grey),),
                         ),
              const SizedBox(width: double.infinity,),
              Center(child: ElevatedButton(
                onPressed: (){}, child: const Text('Sign Up'))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Already have an Account?',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    TextButton(onPressed: (){}, child: const Text('LogIn'))
                  ],
                )
           ],
         ),
       ),
    );
  }
}