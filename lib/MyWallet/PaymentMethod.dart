// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({ Key? key }) : super(key: key);
  static String id = 'payment_method';

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Payment Method',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}