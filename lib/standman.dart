// import 'package:anim/form.dart';
// import 'package:flutter/material.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               children: const [
//                 OnboardingPage(
//                   imagePath:
//                       'assets/undraw3.png', // Replace with your asset paths
//                   title: 'Lorem Ipsum',
//                   description:
//                       'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
//                 ),
//                 OnboardingPage(
//                   imagePath: 'assets/undraw2.png',
//                   title: 'Dolor Sit',
//                   description:
//                       'Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
//                 ),
//               ],
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               2,
//               (index) => buildDot(index, context),
//             ),
//           ),
//           Padding(
//             padding:
//                 const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconButton(
//                   icon: const Icon(Icons.arrow_back_ios),
//                   onPressed: _currentPage == 0
//                       ? null
//                       : () {
//                           _pageController.previousPage(
//                             duration: const Duration(milliseconds: 300),
//                             curve: Curves.easeIn,
//                           );
//                         },
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     if (_currentPage == 1) {
//                       // Navigate to another screen when last page
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           // builder: (context) => const formprep(), // New screen
//                         ),
//                       );
//                     } else {
//                       _pageController.jumpToPage(1); // Skip to last page
//                     }
//                   },
//                   child: Text(
//                     _currentPage == 1 ? 'Done' : 'Skip',
//                     style: const TextStyle(fontSize: 16),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.arrow_forward_ios),
//                   onPressed: () {
//                     if (_currentPage < 1) {
//                       _pageController.nextPage(
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.easeIn,
//                       );
//                     }
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildDot(int index, BuildContext context) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       margin: const EdgeInsets.only(right: 8),
//       height: 8,
//       width: _currentPage == index ? 20 : 8,
//       decoration: BoxDecoration(
//         color: _currentPage == index ? Colors.blue : Colors.grey,
//         borderRadius: BorderRadius.circular(5),
//       ),
//     );
//   }
// }

// class OnboardingPage extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final String description;

//   const OnboardingPage({
//     super.key,
//     required this.imagePath,
//     required this.title,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(32.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             child: Image.asset(imagePath), // Replace with your asset
//           ),
//           const SizedBox(height: 20),
//           Text(
//             title,
//             style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 20),
//           Text(
//             description,
//             textAlign: TextAlign.center,
//             style: const TextStyle(fontSize: 16, color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // // Example next screen to navigate to
// // class NextScreen extends StatelessWidget {
// //   const NextScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Next Screen'),
// //       ),
// //       body: const Center(
// //         child: Text('You have completed the onboarding!'),
// //       ),
// //     );
// //   }
// // }
