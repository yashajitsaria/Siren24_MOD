// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);
  static String id = 'onboarding_2';

  @override
  _Onboarding2State createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
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
            'UIAssets/tracking realtime.png',
            scale: 1.1,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Tracking Realtime ',
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
          // SmoothPageIndicator(
          //   controller: onboaring,
          //   count: 3,
          //   effect: WormEffect(
          //     dotColor: Color(0xFFF1F2F6),
          //     activeDotColor: Color(0xFFFFD428),
          //   ),
          // ),
        ],
      ),
    );
  }
}
