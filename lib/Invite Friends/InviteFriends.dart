// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Menu_Bar.dart/MenuBar.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);
  static String id = 'invite_friends';

  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
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
          ),
        ),
        title: Center(
          child: Text(
            'Invite Friends',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  alignment: Alignment.center,
                  height: 240,
                  child: Image.asset('UIAssets/Oval.png', scale: 50),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.people_alt_rounded,
                    color: Color(0xFF333333),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Text(
                  'Invite Friends',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Earn up to \$150 a day',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'When your friend sign up with your',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'referral code, you can receive up to',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '\$150 a day.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Share Your Invite Code',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFBEC2CE),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFF1F2F6),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '0905070017',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFD428),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'INVITE',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
