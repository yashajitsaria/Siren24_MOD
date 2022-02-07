// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siren24/GoogleMaps/HomeOffline.dart';
import 'package:siren24/Invite%20Friends/InviteFriends.dart';
import 'package:siren24/Menu_Bar.dart/Notifications.dart';
import 'package:siren24/MyWallet/MyWallet.dart';

import 'Settings/Settings.dart';

class MenuBar extends StatefulWidget {
  static String id = 'menu_bar';
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFFD428),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 5,
                        top: 5,
                        left: 5,
                        right: 5,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'UIAssets/dp.png',
                            scale: 0.75,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Martha Banks',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFFFD428),
                                        size: 15,
                                      ),
                                      Text(
                                        'Gold Member',
                                        style: TextStyle(
                                          color: Color(0xFFFFD428),
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.black,
                              ),
                              Text(
                                '10.2',
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Hours online',
                                style: TextStyle(
                                  color: Color(0xFF242E42),
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.speed,
                                color: Colors.black,
                              ),
                              Text(
                                '30 KM',
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Total Distance',
                                style: TextStyle(
                                  color: Color(0xFF242E42),
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.speed,
                                color: Colors.black,
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Total Jobs',
                                style: TextStyle(
                                  color: Color(0xFF242E42),
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/home.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeOffline(),
                          ),
                        );
                      });
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/wallet.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'My Wallet',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyWallet()));
                      });
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/History.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/notification.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Notifications',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()));
                      });
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/gift.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Invite Friends',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InviteFriends()));
                      });
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/settings.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settings()));
                      });
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/logout.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {},
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
