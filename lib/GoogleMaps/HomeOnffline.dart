// ignore_for_file: file_names, duplicate_ignore, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, unused_import, file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:siren24/GoogleMaps/GMaps_HomePickUp.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'GMaps_HomeOffline.dart';

class HomeOffline extends StatefulWidget {
  const HomeOffline({Key? key}) : super(key: key);
  static String id = 'HomeOffline';
  @override
  _HomeOfflineState createState() => _HomeOfflineState();
}

class _HomeOfflineState extends State<HomeOffline> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: MenuBar(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                bottom: PreferredSize(
                  child: OfflineNotif(),
                  preferredSize: Size.fromHeight(48),
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.white,
                centerTitle: true,
                title: Text(
                  'Offline',
                  style: TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: MediaQuery.of(context).size.aspectRatio * 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  FlutterSwitch(
                    activeColor: Color(0xFFFF8900),
                    inactiveToggleColor: Colors.white,
                    activeToggleColor: Colors.white,
                    width: 60,
                    height: 32,
                    valueFontSize: 25.0,
                    toggleSize: 30,
                    value: status,
                    borderRadius: 30.0,
                    padding: 3,
                    showOnOff: false,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SlidingPanelHomeOffline(
          child: GMapsHomeOffline(),
        ),
      ),
    );
  }
}

class SlidingPanelHomeOffline extends StatelessWidget {
  final Widget child;
  const SlidingPanelHomeOffline({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      boxShadow: [BoxShadow(blurRadius: 0)],
      borderRadius: BorderRadius.circular(15),
      minHeight: 100,
      maxHeight: 200,
      body: child,
      panel: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Container(
                width: 36,
                height: 5,
                decoration: BoxDecoration(
                  color: Color(0xFFCBCDCC),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Image.asset('UIAssets/dp.png'),
                    SizedBox(
                      width: 24,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jeremiah Curtis',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'ALC AMB',
                          style: TextStyle(
                            color: Color(0xFFBEC2CE),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    'Earned',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFD428),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
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
                              fontSize:
                                  MediaQuery.of(context).size.aspectRatio * 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Hours online',
                            style: TextStyle(
                              color: Color(0xFF242E42),
                              fontSize:
                                  MediaQuery.of(context).size.aspectRatio * 24,
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
                              fontSize:
                                  MediaQuery.of(context).size.aspectRatio * 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Total Distance',
                            style: TextStyle(
                              color: Color(0xFF242E42),
                              fontSize:
                                  MediaQuery.of(context).size.aspectRatio * 24,
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
                              fontSize:
                                  MediaQuery.of(context).size.aspectRatio * 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Total Jobs',
                            style: TextStyle(
                              color: Color(0xFF242E42),
                              fontSize:
                                  MediaQuery.of(context).size.aspectRatio * 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OfflineNotif extends StatelessWidget {
  const OfflineNotif({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        height: 62,
        decoration: BoxDecoration(
          color: Color(0xFFFF8900),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 1,
                      ),
                      Image.asset(
                        'UIAssets/ic_moon.png',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'You are offline !',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Go online to start accepting jobs.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ],
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