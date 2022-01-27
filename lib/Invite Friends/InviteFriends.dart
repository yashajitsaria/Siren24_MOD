// ignore_for_file: unused_import, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Menu_Bar.dart/MenuBar.dart';

class InviteFriends extends StatefulWidget {
  const InviteFriends({Key? key}) : super(key: key);
  static String id = 'invite_friends';

  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  String invitecode = "0905070017";

  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: invitecode)).then(
      (value) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.grey[100],
          duration: Duration(milliseconds: 1000),
          elevation: 5,
          margin: EdgeInsets.only(
            bottom: 25,
            left: 100,
            right: 100,
            top: MediaQuery.of(context).size.aspectRatio*1000,
          ),
          behavior: SnackBarBehavior.floating,
          content: Center(
            child: Text(
              'Copied to clipboard',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            MenuBar();
          },
          icon: ImageIcon(
            AssetImage(
              'UIAssets/menubar.png',
            ),
            color: Color(0xFFFFD428),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            'Invite Friends',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 240,
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD428),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Align(
                      child: Image.asset(
                        'UIAssets/teamwork.png',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Row(
                children: [
                  Text(
                    'SHARE YOUR INVITE CODE',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFBEC2CE),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                _copyToClipboard();
              },
              child: Container(
                width: 275,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F2F6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    invitecode,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
                width: 275,
                height: 45,
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
