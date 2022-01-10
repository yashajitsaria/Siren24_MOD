// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);
  static String id = 'my_wallet';

  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xFFFFD428)),
            alignment: Alignment.center,
            height: 250,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'My Wallet',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CupertinoSegmentedControl(
                    borderColor: Color(0xFF242A37),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    selectedColor: Color(0xFFFFD428),
                    unselectedColor: Color(0xFF242A37),
                    children: {
                      'a': Container(
                        color: _selectedValue == 'a'
                            ? Color(0xFF242A37)
                            : Color(0xFFFFD428),
                        padding: EdgeInsets.all(8),
                        child: Text('Cash'),
                      ),
                      'b': Container(
                        color: _selectedValue == 'a'
                            ? Color(0xFF242A37)
                            : Color(0xFFFFD428),
                        padding: EdgeInsets.all(8),
                        child: Text('Discount'),
                      ),
                    },
                    onValueChanged: (value) {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    '\$325.00',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'TOTAL EARN',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          OverflowBox(
            alignment: Alignment.bottomCenter,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(color: Colors.white),
                              // alignment: Alignment.center,
                              // height: 240,
                              child:
                                  Image.asset('UIAssets/Oval.png', scale: 25),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'UIAssets/money-2.png',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Payment method',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
