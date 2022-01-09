// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);
  static String id = 'splash_screen';

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: (){}
        //   // icon: ImageIcon(),
        // ),
        title: Center(
          child: Text(
            'Notifications',
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
