// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:siren24/global/globalvariables.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  static String id = 'profile';

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              height: 272,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xFFFF8900),
                            fontSize: MediaQuery.of(context).size.aspectRatio * 40,
                            fontFamily: 'SF UI Display',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'UIAssets/dp.png',
                          scale: 0.45,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          userdata['name'],
                          style: TextStyle(
                            fontFamily: 'SF UI Display',
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.aspectRatio * 50,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Gold Member',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.aspectRatio * 36,
                            color: Color(0xFFBEC2CE),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
            Container(
              height: 42,
              width: double.infinity,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  'INFORMATIONS',
                  style: TextStyle(
                    color: Color(0xFFBEC2CE),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF UI Display',
                    fontSize: MediaQuery.of(context).size.aspectRatio * 30,
                  ),
                ),
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
            Container(
              color: Colors.white,
              height: 180,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 10,
                      top: 7,
                      bottom: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Username',
                                      style: TextStyle(
                                        fontFamily: 'SF UI Display',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            36,
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
                              userdata['name'],
                              style: TextStyle(
                                fontFamily: 'SF UI Display',
                                fontSize:
                                    MediaQuery.of(context).size.aspectRatio * 36,
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
                                  size: 21,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 10, top: 7, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Phone number',
                                      style: TextStyle(
                                        fontFamily: 'SF UI Display',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            36,
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
                              userdata['phonenumber'],
                              style: TextStyle(
                                fontFamily: 'SF UI Display',
                                fontSize:
                                    MediaQuery.of(context).size.aspectRatio * 36,
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
                                  size: 21,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 10, top: 7, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                        fontFamily: 'SF UI Display',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            36,
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
                                fontSize:
                                    MediaQuery.of(context).size.aspectRatio * 36,
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
                                  size: 21,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 10, top: 7, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gender',
                                      style: TextStyle(
                                        fontFamily: 'SF UI Display',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            36,
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
                              userdata['gender'],
                              style: TextStyle(
                                fontFamily: 'SF UI Display',
                                fontSize:
                                    MediaQuery.of(context).size.aspectRatio * 36,
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
                                  size: 21,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 10, top: 7, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Birthday',
                                      style: TextStyle(
                                        fontFamily: 'SF UI Display',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            36,
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
                            userdata['dob'],
                              style: TextStyle(
                                fontFamily: 'SF UI Display',
                                fontSize:
                                    MediaQuery.of(context).size.aspectRatio * 36,
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
                                  size: 21,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
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
