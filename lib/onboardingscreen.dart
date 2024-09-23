// import 'package:anim/herodetailpage.dart';
import 'package:anim/screens/screen1.dart';
import 'package:anim/screens/screen2.dart';
import 'package:anim/screens/screen3.dart';
import 'package:anim/screens/screen4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class boarding extends StatefulWidget {
  const boarding({super.key});

  @override
  State<boarding> createState() => _boardingState();
}

class _boardingState extends State<boarding> {
  PageController pageController = PageController();
  String buttontext = 'skip';
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Text('AHMAD'),
              const Row()
            ],
          ),
        ),
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (index) {
                currentPageIndex = index;
                if (index == 3) {
                  buttontext = 'Finish';
                } else {
                  buttontext = 'Skip';
                }
                setState(() {});
              },
              children: const [screen1(), screen2(), screen3(), screen4()],
            ),
            Container(
                alignment: const Alignment(0, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(onTap: () {}, child: Text(buttontext)),
                    const SizedBox(),
                    SmoothPageIndicator(controller: pageController, count: 4),
                    currentPageIndex == 3
                        ? const SizedBox(
                            width: 10,
                          )
                        : GestureDetector(
                            onTap: () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: const Text(
                              'Next',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                  ],
                ))
          ],
        ));
  }
}
