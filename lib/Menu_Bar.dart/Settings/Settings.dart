// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../MenuBar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  static String id = 'settings';

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            MenuBar();
          },
          icon: ImageIcon(
            AssetImage('UIAssets/menubar.png'),
            color: Color(0xFFFFCC00),
          ),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'SF UI Display',
            fontSize: MediaQuery.of(context).size.aspectRatio * 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        height: MediaQuery.of(context).size.height * 5000,
        child: ListView(
          children: [
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[200],
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                      right: 10,
                      top: 12,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'UIAssets/dp.png',
                                  scale:
                                      MediaQuery.of(context).size.aspectRatio *
                                          1.6,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Martha Banks',
                                      style: TextStyle(
                                        fontFamily: 'SF UI Display',
                                        fontWeight: FontWeight.bold,
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            48,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Gold Member',
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            32,
                                        color: Color(0xFFBEC2CE),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                              size:
                                  MediaQuery.of(context).size.aspectRatio * 60,
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
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFF9100),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            'UIAssets/Vehicle.png',
                                            scale: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Vehicle Management',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            32,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                              size:
                                  MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 54),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF4CD964),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            'UIAssets/ID contact.png',
                                            color: Colors.white,
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Document Management',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            32,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                              size:
                                  MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 54),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFCC00),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            'UIAssets/Favorites.png',
                                            scale: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Reviews',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            32,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                              size:
                                  MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 54),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF007AFF),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            'UIAssets/Place.png',
                                            scale: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Language',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            32,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                              size:
                                  MediaQuery.of(context).size.aspectRatio * 60,
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
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF5AC8FA),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            'UIAssets/notification.png',
                                            scale: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Notifications',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            32,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                              size:
                                  MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 54),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF8F8E94),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            'UIAssets/vip center.png',
                                            scale: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Terms & Privacy Policy',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            32,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                              size:
                                  MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 54),
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.069,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFF2D55),
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            'UIAssets/help.png',
                                            color: Colors.white,
                                            scale: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Contact us',
                                      style: TextStyle(
                                        fontSize: MediaQuery.of(context)
                                                .size
                                                .aspectRatio *
                                            32,
                                        fontFamily: 'SF Pro Text',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: Colors.grey[400],
                              size:
                                  MediaQuery.of(context).size.aspectRatio * 60,
                            ),
                          ],
                        ),
                      ],
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
