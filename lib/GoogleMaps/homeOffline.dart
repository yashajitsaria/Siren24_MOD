// ignore_for_file: prefer_const_constructors, unused_import, file_names

import 'package:flutter/material.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomeOffline extends StatefulWidget {
  const HomeOffline({Key? key}) : super(key: key);
  static String id = 'HomeOffline' ;
  @override
  _HomeOfflineState createState() => _HomeOfflineState();
}

class _HomeOfflineState extends State<HomeOffline> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Offline',
          style: TextStyle(
            fontFamily: 'SF UI Display',
            fontSize: MediaQuery.of(context).size.aspectRatio * 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          FlutterSwitch(
            activeColor: Color(0xFFFF8900),
            inactiveColor: Color(0xFF000000),
            activeToggleColor: Color(0xFFFF8900),
            inactiveToggleColor: Color(0xFF000000),
            width: 100,
            height: 48.0,
            valueFontSize: 25.0,
            toggleSize: 45.0,
            value: status,
            borderRadius: 30.0,
            padding: 8.0,
            showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
