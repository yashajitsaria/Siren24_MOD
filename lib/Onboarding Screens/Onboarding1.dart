// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:siren24/Onboarding%20Screens/Onboarding2.dart';
import 'package:siren24/Onboarding%20Screens/Onboarding3.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);
  static String id = 'onboarding_1';

  @override
  _Onboarding1State createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  final onboaring = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Image.asset(
            'UIAssets/accept a job.png',
            scale: 1.1,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Accept a Job',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'adipiscing elit. Nullam ac vestibulum',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 48,
          ),
          Center(
            child: TextButton(
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFBEC2CE),
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 48,
          ),
          // SizedBox(
          //   height: 250,
          //   child: PageView(
          //     controller: onboaring,
          //     children: [
          //       Onboarding1(),
          //       Onboarding2(),
          //       Onboarding3(),
          //     ],
          //   ),
          // ),
          // Column(
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(0),
          //       child: SmoothPageIndicator(
          //         controller: onboaring,
          //         count: 3,
          //         onDotClicked: (index) => onboaring.animateToPage(
          //           index,
          //           duration: Duration(milliseconds: 300),
          //           curve: Curves.bounceOut,
          //         ),
          //         effect: WormEffect(
          //           dotColor: Color(0xFFF1F2F6),
          //           activeDotColor: Color(0xFFFFD428),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
