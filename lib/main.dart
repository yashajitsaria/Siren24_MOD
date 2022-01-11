// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:siren24/Invite%20Friends/InviteFriends.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';
import 'package:siren24/Menu_Bar.dart/Notifications.dart';
import 'package:siren24/Menu_Bar.dart/Settings/Profile.dart';
import 'package:siren24/Menu_Bar.dart/Settings/Settings.dart';
import 'package:siren24/MyWallet/MyWallet.dart';

import 'SplashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Siren24());
}

class Siren24 extends StatelessWidget {
  const Siren24({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),

      // initialRoute: InviteFriends.id,
      // routes: {
        
      // },
      home: Settings(),
    );
  }
}