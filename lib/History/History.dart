// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);
  static String id = 'history';

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F2F6),
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
          'History',
          style: TextStyle(
            fontFamily: 'SF UI Display',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        // bottom: TabBar(
        //   indicatorColor: Colors.transparent,
        //   indicatorWeight: 0,
        //   isScrollable: true,
        //   padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
        //   labelColor: Colors.white,
        //   labelStyle: TextStyle(color: Color(0xFFFF8900)),
        //   unselectedLabelColor: Color(0xFFF1F2F6),
        //   unselectedLabelStyle: TextStyle(color: Color(0xFFBEC2CE)),
        //   tabs: [
        //     Padding(
        //       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Color(0xFFF1F2F6),
        //           borderRadius: BorderRadius.circular(15),
        //         ),
        //         child: Center(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //             children: [
        //               Text(
        //                 'Mon',
        //                 style: TextStyle(
        //                   color: Color(0xFFBEC2CE),
        //                   fontSize: 15,
        //                   fontFamily: 'SF UI Display',
        //                 ),
        //               ),
        //               Text(
        //                 '11 ',
        //                 style: TextStyle(
        //                   color: Color(0xFFBEC2CE),
        //                   fontSize: 15,
        //                   fontFamily: 'SF UI Display',
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(18),
      //         color: Color(0xFFFFD428),
      //       ),
      //       child: Row(
      //         children: [

      //         ],
      //       ),
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(18),
      //         color: Color(0xFFFF8900),
      //       ),
      //       child: Row(
      //         children: [
                
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
