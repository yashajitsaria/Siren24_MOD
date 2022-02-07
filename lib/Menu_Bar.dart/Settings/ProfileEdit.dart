// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);
  static String id = 'profileEdit';

  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              height: 296.h,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Color(0xFFFF8900),
                            fontSize: 20.sp,
                            fontFamily: 'SF UI Display',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: Color(0xFFFF8900),
                            fontSize: 20.sp,
                            fontFamily: 'SF UI Display',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'UIAssets/dp.png',
                          scale: 0.5,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'Martha Banks',
                          style: TextStyle(
                            fontFamily: 'SF UI Display',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Gold Member',
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xFFBEC2CE),
                          ),
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2.h,
            ),
            Container(
              height: 52.h,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  'INFORMATIONS',
                  style: TextStyle(
                    color: Color(0xFFBEC2CE),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF UI Display',
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ),
            Container(
              height: 2.h,
            ),
            Container(
              height: 228.h,
              child: Column(
                children: [
                  Container(
                    height: 2.h,
                  ),
                  Container(
                    color: Colors.white,
                    height: 44.h,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 10, top: 7, bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Phone number',
                                        style: TextStyle(
                                          fontFamily: 'SF UI Display',
                                          fontSize: 20.sp,
                                          color: Color(0xFF030303),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '584-490-9153',
                                style: TextStyle(
                                  fontFamily: 'SF UI Display',
                                  fontSize: 20.sp,
                                  color: Color(0xFFBEC2CE),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    color: Color(0xFFBEC2CE),
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 2.h,
                  ),
                  Container(
                    color: Colors.white,
                    height: 44.h,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 10, top: 7, bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                          fontFamily: 'SF UI Display',
                                          fontSize: 20.sp,
                                          color: Color(0xFF030303),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'freeslab88@gmail.com',
                                style: TextStyle(
                                  fontFamily: 'SF UI Display',
                                  fontSize: 20.sp,
                                  color: Color(0xFFBEC2CE),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    color: Color(0xFFBEC2CE),
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 2.h,
                  ),
                  Container(
                    color: Colors.white,
                    height: 44.h,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 10, top: 7, bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Gender',
                                        style: TextStyle(
                                          fontFamily: 'SF UI Display',
                                          fontSize: 20.sp,
                                          color: Color(0xFF030303),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontFamily: 'SF UI Display',
                                  fontSize: 20.sp,
                                  color: Color(0xFFBEC2CE),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    color: Color(0xFFBEC2CE),
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 2.h,
                  ),
                  Container(
                    color: Colors.white,
                    height: 44.h,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 10, top: 7, bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Birthday',
                                        style: TextStyle(
                                          fontFamily: 'SF UI Display',
                                          fontSize: 20.sp,
                                          color: Color(0xFF030303),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'April 16, 1988',
                                style: TextStyle(
                                  fontFamily: 'SF UI Display',
                                  fontSize: 20.sp,
                                  color: Color(0xFFBEC2CE),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_right_rounded,
                                    color: Color(0xFFBEC2CE),
                                    size: 20.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
