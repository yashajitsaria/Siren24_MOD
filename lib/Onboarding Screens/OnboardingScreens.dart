// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:siren24/Onboarding%20Screens/SetupGPSLocations.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({Key? key}) : super(key: key);
  static String id = 'onboarding_1';

  @override
  _OnboardingScreensState createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  late PageController _onboarding;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _onboarding = PageController();
  }

  @override
  void dispose() {
    _onboarding.dispose();
    super.dispose();
  }

  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  nextFunction() {
    _onboarding.nextPage(duration: _kDuration, curve: _kCurve);
  }

  previousFunction() {
    _onboarding.previousPage(duration: _kDuration, curve: _kCurve);
  }

  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: onChangedFunction,
                    controller: _onboarding,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('UIAssets/accept a job.png'),
                          SizedBox(
                            height: 94.h,
                          ),
                          Text(
                            'Accept a Job',
                            style: TextStyle(
                              fontFamily: 'SF UI Display',
                              fontWeight: FontWeight.bold,
                              fontSize: 36.sp,
                            ),
                          ),
                          SizedBox(
                            height: 33.h,
                          ),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: Text(
                              'Lorem ipsum dolor sit amet consectetur adipiscing',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'SF UI Display',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pushReplacementNamed(
                                  context,
                                  SetupGPSLocations.id,
                                );
                              });
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Color(0xFFBEC2CE),
                                fontSize: 20.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'UIAssets/tracking realtime.png',
                            scale: 1.1,
                          ),
                          SizedBox(
                            height: 94.h,
                          ),
                          Text(
                            'Tracking Realtime',
                            style: TextStyle(
                              fontFamily: 'SF UI Display',
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 36.sp,
                            ),
                          ),
                          SizedBox(
                            height: 33.sp,
                          ),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: Text(
                              'Lorem ipsum dolor sit amet consectetur adipiscing',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'SF UI Display',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pushReplacementNamed(
                                  context,
                                  SetupGPSLocations.id,
                                );
                              });
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Color(0xFFBEC2CE),
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'UIAssets/earn money.png',
                            scale: 1.1,
                          ),
                          SizedBox(
                            height: 90.h,
                          ),
                          Text(
                            'Earn Money',
                            style: TextStyle(
                              fontFamily: 'SF UI Display',
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 36.sp,
                            ),
                          ),
                          SizedBox(
                            height: 33.h,
                          ),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: Text(
                              'Lorem ipsum dolor sit amet consectetur adipiscing.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'SF UI Display',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pushReplacementNamed(
                                  context,
                                  SetupGPSLocations.id,
                                );
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 92),
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFD428),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Center(
                                child: Text(
                                  'GET STARTED',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: size.height * .08,
              left: size.width * .5 - 25,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Indicator(
                      positionIndex: 0,
                      currentIndex: currentIndex,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Indicator(
                      positionIndex: 1,
                      currentIndex: currentIndex,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Indicator(
                      positionIndex: 2,
                      currentIndex: currentIndex,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const Indicator({required this.currentIndex, required this.positionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12.h,
      width: 12.h,
      decoration: BoxDecoration(
        color: positionIndex == currentIndex
            ? Color(0xFFFFD428)
            : Color(0xFFF1F2F6),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
