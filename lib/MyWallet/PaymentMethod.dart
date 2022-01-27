// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);
  static String id = 'payment_method';

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
      // body: Column(
      //   children: [
      //     Align(
      //       child: GestureDetector(
      //         onTap: () {},
      //         child: Padding(
      //           padding: const EdgeInsets.all(15.0),
      //           child: Material(
      //             borderRadius: BorderRadius.circular(7),
      //             elevation: 1,
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(7),
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: Colors.grey,
      //                   ),
      //                 ],
      //                 color: Colors.white,
      //               ),
      //               child: Row(
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 children: [
      //                   Stack(
      //                     children: <Widget>[
      //                       Padding(
      //                         padding: const EdgeInsets.all(10.0),
      //                         child: Container(
      //                           width: 50,
      //                           height: 50,
      //                           decoration: BoxDecoration(
      //                             color: Color(0xFFFFD428),
      //                             borderRadius: BorderRadius.circular(100),
      //                           ),
      //                           child: Align(
      //                             alignment: Alignment.center,
      //                             child: Image.asset(
      //                               'UIAssets/card.png',
      //                               color: Colors.black,
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   Text(
      //                     'Add a new card',
      //                     style: TextStyle(
      //                       color: Colors.black,
      //                       fontSize: 22,
      //                       fontFamily: 'SF UI Display',
      //                       letterSpacing: 1,
      //                     ),
      //                   ),
      //                   IconButton(
      //                     onPressed: () {},
      //                     icon: Icon(
      //                       Icons.keyboard_arrow_right_rounded,
      //                       color: Colors.grey,
      //                       size: 30,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
