// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFFD428),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Center(
                        child: Image.asset('UIAssets/dp.png'),
                      ),
                      Column(
                        children: [
                          Text(
                            'Martha Banks',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Color(0xFFFFD428),
                                    size: 12,
                                  ),
                                  Text(
                                    'Gold Member',
                                    style: TextStyle(
                                      color: Color(0xFFFFD428),
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            // Image.asset('UIAssets/time.png',),
                            Icon(
                              Icons.access_time,
                              color: Colors.black,
                            ),
                            Text(
                              '10.2',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Hours online',
                              style: TextStyle(
                                color: Color(0xFF242E42),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'UIAssets/speed.png',
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.speed,
                              color: Colors.black,
                            ),
                            Text(
                              '30 KM',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Total Distance',
                              style: TextStyle(
                                color: Color(0xFF242E42),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'UIAssets/blacklist.png',
                              color: Colors.black,
                            ),
                            Text(
                              '20',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Total Jobs',
                              style: TextStyle(
                                color: Color(0xFF242E42),
                                fontSize: 12,
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
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/home.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/wallet.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'My Wallet',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/History.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'History',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/notification.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/gift.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Invite Friends',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/settings.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Image.asset('UIAssets/logout.png'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(),
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
    );
  }
}
