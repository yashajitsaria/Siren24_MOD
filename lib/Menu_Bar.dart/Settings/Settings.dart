// ignore_for_file: file_names, prefer_const_constructors

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
          ),
        ),
        title: Center(
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
